package com.oe.test.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class BaseController {
    @RequestMapping(value = "/")
    public String mainPage() {
        return "redirect:/index";
    }


}