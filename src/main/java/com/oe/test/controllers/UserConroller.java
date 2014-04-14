package com.oe.test.controllers;

import com.oe.test.common.ErrorMessage;
import com.oe.test.common.ValidationResponse;
import com.oe.test.model.Role;
import com.oe.test.model.User;
import com.oe.test.service.IUserService;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

@RequestMapping("/users")
@Controller
public class UserConroller {

    @Autowired
    private IUserService userService;


    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addUser(@Valid @ModelAttribute("user")
                          User user, BindingResult result) {

        if (!result.hasErrors()) {

            user.setEnabled(1);
            user.setRole(new Role("ROLE_USER", user));
            user.setPass(DigestUtils.md5Hex(user.getPass()));
            user.setPass2(user.getPass());
            userService.addUser(user);

        }
        return "redirect:/index";
    }

    @RequestMapping(value = "/addJson", method = RequestMethod.POST)
    public
    @ResponseBody
    ValidationResponse addUser(Model model, @Valid @ModelAttribute("user") User user, BindingResult result) {

        System.out.println(user.getId());
        ValidationResponse res = new ValidationResponse();
        User us = userService.getUserByUserName(user.getLogin());

        //if user not exists and valid
        if ((us == null) && (!result.hasErrors()) && (user.getPass().equals(user.getPass2()))) {
            res.setStatus("SUCCESS");
            return res;
        }
        //if user exists or not valid
        res.setStatus("FAIL");
        List<FieldError> allErrors = result.getFieldErrors();
        List<ErrorMessage> errorMesages = new ArrayList<ErrorMessage>();
        for (FieldError objectError : allErrors) {
            errorMesages.add(new ErrorMessage(objectError.getField(), objectError.getDefaultMessage()));
        }
        if (us != null) errorMesages.add(new ErrorMessage("login", "Користувач існує"));
        if (!user.getPass().equals(user.getPass2())) errorMesages.add(new ErrorMessage("pass", "Паролі не збігаються"));
        res.setErrorMessageList(errorMesages);
        return res;
    }


    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String editUser(@PathVariable("id") Integer id, ModelMap model) {

        model.addAttribute("user", userService.getUserById(id));
        model.addAttribute("active", "myProfile");


        return "editUser";
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.POST)
    public String editUser(@Valid @ModelAttribute("user") User user, BindingResult result, @PathVariable("id") Integer id, ModelMap model) {
        userService.validatePassEquals(user, result);
        model.addAttribute("active", "myProfile");
        if (result.hasErrors()) {
            return "editUser";
        }
        User u = userService.getUserById(id);
        if (!u.getPass().equals(user.getPass())) {
            user.setPass(DigestUtils.md5Hex(user.getPass()));
            user.setPass2(DigestUtils.md5Hex(user.getPass2()));
        }
        userService.updateUser(user);

        return "redirect:/index";
    }

    @RequestMapping(value = "/profile", method = RequestMethod.GET)
    public String myProfile(ModelMap model, Principal principal) {

        model.addAttribute("user", userService.getUserByUserName(principal.getName()));
        model.addAttribute("active", "myProfile");


        return "editUser";
    }

    @RequestMapping("/delete/{id}")
    public String deleteContact(@PathVariable("id")
                                Integer id) {

        userService.deleteUser(id);

        return "redirect:/index";
    }

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String listAll(ModelMap model) {

        model.addAttribute("active", "users");
        model.addAttribute("usersAll", userService.getAllUsers());

        return "listUsers";
    }
}

