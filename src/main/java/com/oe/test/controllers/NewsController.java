package com.oe.test.controllers;

import com.oe.test.model.News;
import com.oe.test.service.ICategoryService;
import com.oe.test.service.INewsService;
import com.oe.test.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

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

    @RequestMapping(method = RequestMethod.GET)
    public String listAll(ModelMap model, Principal principal) {
       // model.addAttribute("news", new News());
        model.addAttribute("newsAll", newsService.getAllNews());

        if (principal != null) {
            String name = principal.getName();
            model.addAttribute("username", name);
        }
        return "news";

    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addNews(ModelMap model) {

        model.addAttribute("news", new News());
        model.addAttribute("categoryAll", categoryService.getAllCategory());
        return "addNews";
    }
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addNewsDo(@ModelAttribute("news")
                             News news, BindingResult result, Principal principal) {
        String username = principal.getName();
        news.setUser(userService.getUserByUserName(username));

        newsService.addNews(news);

        return "redirect:/news";
    }

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @RequestMapping("/delete/{id}")
    public String deleteContact(@PathVariable("id")
                                Integer id) {

        newsService.deleteNews(id);
        ;

        return "redirect:/news";
    }

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String editNews(@PathVariable("id") Integer id, ModelMap model) {

        model.addAttribute("news", newsService.getNews(id));
        model.addAttribute("categoryAll", categoryService.getAllCategory());

        return "editNews";
    }

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @RequestMapping(value = "/edit/{id}", method = RequestMethod.POST)
    public String editNewsDo(@ModelAttribute("news") News news, @PathVariable("id") Integer id) {

        newsService.updateNews(news);

        return "redirect:/news";
    }

    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public String search(@RequestParam(value="query", required=false) String query, ModelMap model) {

        model.addAttribute("newsAll",newsService.searchNews(query));

    return "news";
    }

}
