package com.oe.test.controllers;

import com.oe.test.model.News;
import com.oe.test.model.User;
import com.oe.test.service.ICategoryService;
import com.oe.test.service.INewsService;
import com.oe.test.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.support.ByteArrayMultipartFileEditor;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.OutputStream;
import java.security.Principal;

@Controller
@RequestMapping("/news")
public class NewsController {

    @Autowired
    private INewsService newsService;

    @Autowired
    private IUserService userService;

    @Autowired
    private ICategoryService categoryService;

    @InitBinder
    protected void initBinder(HttpServletRequest request,
                              ServletRequestDataBinder binder) throws ServletException {
        binder.registerCustomEditor(byte[].class,
                new ByteArrayMultipartFileEditor());

    }

    @RequestMapping(method = RequestMethod.GET)
    public String listAll(ModelMap model, Principal principal) {
        model.addAttribute("user", new User());
        model.addAttribute("newsAll", newsService.getAllNews());

        if (principal != null) {
            String name = principal.getName();
            model.addAttribute("username", name);
        }
        return "news";

    }

    @PreAuthorize("isAuthenticated()")
    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addNews(ModelMap model) {

        model.addAttribute("news", new News());
        model.addAttribute("categoryAll", categoryService.getAllCategory());
        return "addNews";
    }

    @PreAuthorize("isAuthenticated()")
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addNewsDo(@ModelAttribute("news")  News news, BindingResult result,
                            @RequestParam("file") MultipartFile file, Principal principal, ModelMap model) {
        String username = principal.getName();
        news.setUser(userService.getUserByUserName(username));
        newsService.fileValidator(result, file);
        if (result.hasErrors()) {
            model.addAttribute("categoryAll", categoryService.getAllCategory());
            return "addNews";
        }
        setBlob(news, file);
        newsService.addNews(news);

        return "redirect:/news";
    }



    @PreAuthorize("isAuthenticated()")
    @RequestMapping("/delete/{id}")
    public String deleteContact(@PathVariable("id") Integer id) {

        newsService.deleteNews(id);

        return "redirect:/news";
    }

    @PreAuthorize("isAuthenticated()")
    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String editNews(@PathVariable("id") Integer id, ModelMap model) {

        model.addAttribute("news", newsService.getNews(id));
        model.addAttribute("categoryAll", categoryService.getAllCategory());

        return "editNews";
    }

    @PreAuthorize("isAuthenticated()")
    @RequestMapping(value = "/edit/{id}", method = RequestMethod.POST)
    public String editNewsDo(@ModelAttribute("news") News news, BindingResult result,
                             @PathVariable("id") Integer id, @RequestParam("file") MultipartFile file, ModelMap model) {
        if(file.isEmpty()){
            news.setFile(newsService.getNews(id).getFile());
            news.setFilename(newsService.getNews(id).getFilename());
        } else{
            newsService.fileValidator(result, file);
            if (result.hasErrors()) {
                model.addAttribute("categoryAll", categoryService.getAllCategory());
                return "editNews";
            }
            setBlob(news, file);
        }
        newsService.updateNews(news);

        return "redirect:/news";
    }

    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public String search(@RequestParam(value="query", required=false) String query, ModelMap model) {

        model.addAttribute("newsAll",newsService.searchNews(query));

    return "news";
    }

    @RequestMapping(value="/getImage/{id}")
    public String getUserImage(HttpServletResponse response, @PathVariable("id") int id) throws IOException {

        byte[] file = newsService.getNews(id).getFile();
        try {
            OutputStream out = response.getOutputStream();
            out.write(file);
            out.flush();
            out.close();
        } catch (IOException e) {
        }
        return null;
    }
    private void setBlob(News news, MultipartFile file) {
        try {
            byte[] blob = file.getBytes();
            news.setFilename(file.getOriginalFilename());
            news.setContentType(file.getContentType());
            news.setFile(blob);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}
