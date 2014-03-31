package com.oe.test.controllers;

import com.oe.test.service.INewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@EnableWebMvc
@Controller
public class LoginController {

    @Autowired
    private INewsService newsService;

    public void setNewsService(INewsService newsService) {
        this.newsService = newsService;
    }


    @RequestMapping(value = "/loginfailed", method = RequestMethod.GET)
    public String loginerror(ModelMap model, final RedirectAttributes redirectAttributes) {

        redirectAttributes.addFlashAttribute("error", "true");
        return "redirect:/news";

    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(final RedirectAttributes redirectAttributes) {
        redirectAttributes.addFlashAttribute("logout", "Ви вийшли!");
        return "redirect:/news";

    }

}
