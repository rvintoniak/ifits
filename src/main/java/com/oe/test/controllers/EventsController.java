package com.oe.test.controllers;

import com.oe.test.model.Event;
import com.oe.test.model.User;
import com.oe.test.service.IEventsService;
import com.oe.test.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
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
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
@RequestMapping("/events")
public class EventsController {

    @Autowired
    private IEventsService eventsService;

    @Autowired
    private IUserService userService;

    @InitBinder
    protected void initBinder(HttpServletRequest request,
                              ServletRequestDataBinder binder) throws ServletException {
        binder.registerCustomEditor(byte[].class,
                new ByteArrayMultipartFileEditor());
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd.MM.yyyy");
        CustomDateEditor editor = new CustomDateEditor(dateFormat, true);
        binder.registerCustomEditor(Date.class, editor);

    }

    @PreAuthorize("isAuthenticated()")
    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String add(ModelMap model) {

        model.addAttribute("event", new Event());
        model.addAttribute("active", "addEvent");
        return "addEvent";
    }

    @PreAuthorize("isAuthenticated()")
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addDo(@Valid @ModelAttribute("event") Event event, BindingResult result,
                        @RequestParam("file") MultipartFile file, Principal principal, ModelMap model) {
        String username = principal.getName();
        event.setUser(userService.getUserByUserName(username));
        model.addAttribute("active", "addEvent");
        if (result.hasErrors()) {
            /*for(ObjectError e :result.getAllErrors())
            System.out.println(e.getObjectName()+" "+ e.getDefaultMessage());*/
            return "addEvent";
        }
        setBlob(event, file);
        eventsService.add(event);

        return "redirect:/index";
    }


    @PreAuthorize("isAuthenticated()")
    @RequestMapping("/delete/{id}")
    public String delete(@PathVariable("id") Integer id) {

        eventsService.delete(id);

        return "redirect:/index";
    }

    @PreAuthorize("isAuthenticated()")
    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String edit(@PathVariable("id") Integer id, ModelMap model) {

        model.addAttribute("event", eventsService.get(id));
        model.addAttribute("active", "addEvent");

        return "editEvent";
    }

    @PreAuthorize("isAuthenticated()")
    @RequestMapping(value = "/edit/{id}", method = RequestMethod.POST)
    public String editDo(@Valid @ModelAttribute("event") Event event, BindingResult result,
                         @PathVariable("id") Integer id, @RequestParam("file") MultipartFile file, ModelMap model) {

        if (file.isEmpty()) {
            event.setFile(eventsService.get(id).getFile());
        } else {
            eventsService.fileValidator(result, file);
            if (result.hasErrors()) {
                model.addAttribute("active", "addEvent");
                return "editEvent";
            }
            setBlob(event, file);
        }
        eventsService.update(event);

        return "redirect:/index";
    }


    @RequestMapping(value = "/getImage/{id}")
    public String getUserImage(HttpServletResponse response, @PathVariable("id") int id) throws IOException {

        byte[] file = eventsService.get(id).getFile();
        try {
            OutputStream out = response.getOutputStream();
            out.write(file);
            out.flush();
            out.close();
        } catch (IOException e) {
        }
        return null;
    }

    @RequestMapping(value = "/view/{id}", method = RequestMethod.GET)
    public String viewNews(@PathVariable("id") Integer id, ModelMap model, Principal principal) {

        model.addAttribute("event", eventsService.get(id));
        model.addAttribute("user", new User());
        return "viewEvent";
    }

    private void setBlob(Event event, MultipartFile file) {
        try {
            byte[] blob = file.getBytes();
            event.setFile(blob);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}
