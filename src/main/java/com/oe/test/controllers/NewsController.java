package com.oe.test.controllers;

import com.oe.test.model.News;
import com.oe.test.model.User;
import com.oe.test.service.ICategoryService;
import com.oe.test.service.INewsService;
import com.oe.test.service.IUserService;
import org.apache.commons.io.IOUtils;
import org.hibernate.Hibernate;
import org.hibernate.type.descriptor.java.BinaryStreamImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.Principal;
import java.sql.Blob;
import java.sql.SQLException;

@Controller
@RequestMapping("/news")
public class NewsController {

    @Autowired
    private INewsService newsService;

    @Autowired
    private IUserService userService;

    @Autowired
    private ICategoryService categoryService;

    @RequestMapping(method = RequestMethod.GET)
    public String listAll(ModelMap model, Principal principal) {
       // model.addAttribute("news", new News());
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
                            @RequestParam("file") MultipartFile file, Principal principal) {
        String username = principal.getName();
        news.setUser(userService.getUserByUserName(username));
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
    public String editNewsDo(@ModelAttribute("news") News news,BindingResult result, @PathVariable("id") Integer id,@RequestParam("file") MultipartFile file) {
        System.out.println(file.getName());
        if(file.isEmpty()){
            news.setFile(newsService.getNews(id).getFile());
            news.setFilename(newsService.getNews(id).getFilename());
        } else{
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
    public void getUserImage(HttpServletResponse response , @PathVariable("id") int id) throws IOException{

        response.setContentType(newsService.getNews(id).getContentType());

        IOUtils.copy(newsService.getInputStream(id), response.getOutputStream());
    }

    private void setBlob(News news, MultipartFile file) {
        try {
            Blob blob = Hibernate.createBlob(file.getInputStream());
            news.setFilename(file.getOriginalFilename());
            news.setContentType(file.getContentType());
            news.setFile(blob);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}
