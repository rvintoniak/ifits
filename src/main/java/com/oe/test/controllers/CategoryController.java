package com.oe.test.controllers;

import com.oe.test.model.Category;
import com.oe.test.model.News;
import com.oe.test.model.User;
import com.oe.test.service.ICategoryService;
import com.oe.test.service.INewsService;
import com.oe.test.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
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
import javax.validation.Valid;
import java.io.IOException;
import java.io.OutputStream;
import java.security.Principal;

@Controller
@RequestMapping("/category")
public class CategoryController {

    @Autowired
    private ICategoryService categoryService;

    @RequestMapping(method = RequestMethod.GET)
    public String listAll(ModelMap model) {

        model.addAttribute("category", new Category());
        model.addAttribute("categoryAllList", categoryService.getAllCategoryList());
        model.addAttribute("method","add");
        return "listCategory";

    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String add(@Valid @ModelAttribute("category")  Category category, BindingResult result,
                            ModelMap model) {

        if (result.hasErrors()) {

            model.addAttribute("categoryAllList", categoryService.getAllCategoryList());
            model.addAttribute("method","add");
            return "listCategory";
        }

        categoryService.addCategory(category);

        return "redirect:/category";
    }



    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String edit(@PathVariable("id") Integer id, ModelMap model) {

        model.addAttribute("category", categoryService.getCategory(id));
        model.addAttribute("method","edit");
        return "listCategory";
    }


    @RequestMapping(value = "/edit/{id}", method = RequestMethod.POST)
    public String editDo(@Valid @ModelAttribute("category")  Category category, BindingResult result, ModelMap model) {

        if (result.hasErrors()) {
            model.addAttribute("method","edit");
        return "listCategory";

        }
        categoryService.updateCategory(category);

    return "redirect:/category";
    }

    @RequestMapping(value="/delete/{id}")
    public String delete(@PathVariable("id") int id) {

        categoryService.deleteCategory(id);

    return "redirect:/category";
    }

}
