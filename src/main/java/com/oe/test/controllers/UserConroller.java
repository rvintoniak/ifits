package com.oe.test.controllers;

import com.oe.test.model.Role;
import com.oe.test.model.User;
import com.oe.test.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@RequestMapping("/users")
@Controller
public class UserConroller {

    @Autowired
    private IUserService userService;


   /* @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String add(ModelMap model) {

        model.addAttribute("user", new User());

        return "addUser";
    }*/

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addUser(@ModelAttribute("user")
                          User user, BindingResult result) {
        user.setEnabled(1);
        user.setRole(new Role("ROLE_USER", user));
        userService.addUser(user);

        return "redirect:/news";
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String editUser(@PathVariable("id") Integer id, ModelMap model) {

        model.addAttribute("user", userService.getUserById(id));

        return "editUser";
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.POST)
    public String editUser(@ModelAttribute("user") User user, @PathVariable("id") Integer id) {
        System.out.println(user.getRole().getAuthority());
        System.out.println(user.getRole().getUser_id());
        userService.updateUser(user);

        return "redirect:/news";
    }


    @RequestMapping("/delete/{id}")
    public String deleteContact(@PathVariable("id")
                                Integer id) {

        userService.deleteUser(id);

        return "redirect:/news";
    }

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String listAll(ModelMap model) {

        userService.getUserById(1);
        model.addAttribute("usersAll", userService.getAllUsers());

        return "listUsers";
    }
}

