package com.oe.test.controllers;

import com.oe.test.model.User;
import com.oe.test.service.IBooksService;
import com.oe.test.service.ICategoryService;
import com.oe.test.service.IEventsService;
import com.oe.test.service.INewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.security.Principal;

@Controller
@RequestMapping("/index")
public class IndexController {

    @Autowired
    private INewsService newsService;

    @Autowired
    private IBooksService booksService;

    @Autowired
    private ICategoryService categoryService;

    @Autowired
    private IEventsService eventsService;


    @RequestMapping(method = RequestMethod.GET)
    public String index(ModelMap model, Principal principal) {

        model.addAttribute("user", new User());
        model.addAttribute("newsAll", newsService.getAllNews());
        model.addAttribute("tags", categoryService.getAllCategoryTags());
        model.addAttribute("events",eventsService.getAll());
        model.addAttribute("books", booksService.getAll());

        if (principal != null) {
            String name = principal.getName();
            model.addAttribute("username", name);
        }

        return "index";
    }

}
