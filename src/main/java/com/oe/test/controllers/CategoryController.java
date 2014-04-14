package com.oe.test.controllers;

import com.oe.test.model.Category;
import com.oe.test.service.ICategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;

@Controller
@RequestMapping("/category")
public class CategoryController {

    @Autowired
    private ICategoryService categoryService;

    @RequestMapping(method = RequestMethod.GET)
    public String listAll(ModelMap model) {

        model.addAttribute("category", new Category());
        model.addAttribute("categoryAllList", categoryService.getAllCategoryList());
        model.addAttribute("method", "add");
        model.addAttribute("active", "addCategory");
        return "listCategory";

    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String add(@Valid @ModelAttribute("category") Category category, BindingResult result,
                      ModelMap model) {

        if (result.hasErrors()) {

            model.addAttribute("categoryAllList", categoryService.getAllCategoryList());
            model.addAttribute("method", "add");
            model.addAttribute("active", "addCategory");
            return "listCategory";
        }

        categoryService.addCategory(category);

        return "redirect:/category";
    }


    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String edit(@PathVariable("id") Integer id, ModelMap model) {

        model.addAttribute("category", categoryService.getCategory(id));
        model.addAttribute("method", "edit");
        model.addAttribute("active", "addCategory");
        return "listCategory";
    }


    @RequestMapping(value = "/edit/{id}", method = RequestMethod.POST)
    public String editDo(@Valid @ModelAttribute("category") Category category, BindingResult result, ModelMap model) {

        if (result.hasErrors()) {
            model.addAttribute("method", "edit");
            model.addAttribute("active", "addCategory");
            return "listCategory";

        }
        categoryService.updateCategory(category);

        return "redirect:/category";
    }

    @RequestMapping(value = "/delete/{id}")
    public String delete(@PathVariable("id") int id) {

        categoryService.deleteCategory(id);

        return "redirect:/category";
    }

}
