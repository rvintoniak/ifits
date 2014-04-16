package com.oe.test.controllers;

import com.oe.test.model.Book;
import com.oe.test.service.IBooksService;
import com.oe.test.service.INewsService;
import com.oe.test.service.IUserService;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.Valid;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.Principal;

@Controller
@RequestMapping("/books")
public class BooksController {

    @Autowired
    private INewsService newsService;

    @Autowired
    private IUserService userService;

    @Autowired
    private IBooksService booksService;

    String filePath = "D://java/ifits/target/IFITS/resources/books";

    @PreAuthorize("isAuthenticated()")
    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String add(ModelMap model) {

        model.addAttribute("book", new Book());
        model.addAttribute("books", booksService.getAll());
        model.addAttribute("active", "addBook");

        return "addBook";
    }

    @PreAuthorize("isAuthenticated()")
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addDo(@Valid @ModelAttribute("book") Book book, BindingResult result, Principal principal, ModelMap model) {


        String username = principal.getName();
        MultipartFile img = book.getImage();
        MultipartFile file = book.getBookfile();
        model.addAttribute("active", "addBook");
        newsService.fileValidator(result, img);
        bookfileValidator(result, file);
        if (result.hasErrors()) {
            return "addBook";
        }
        book.setUser(userService.getUserByUserName(username));
        writeFile(file, book);
        writeImage(img, book);
        booksService.add(book);
        return "redirect:/index";
    }


    @PreAuthorize("isAuthenticated()")
    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String edit(@PathVariable("id") Integer id, ModelMap model) {

        model.addAttribute("book", booksService.get(id));
        model.addAttribute("active", "addBook");

        return "editBook";
    }

    @PreAuthorize("isAuthenticated()")
    @RequestMapping(value = "/edit/{id}", method = RequestMethod.POST)
    public String editNewsDo(@Valid @ModelAttribute("book") Book book, BindingResult result, ModelMap model, @PathVariable("id") Integer id) {
        model.addAttribute("active", "addBook");
        MultipartFile img = book.getImage();
        MultipartFile file = book.getBookfile();
        if (file.isEmpty()) {
            book.setFile(booksService.get(id).getFile());
        } else {
            booksService.fileValidator(result, file);
            if (result.hasErrors()) {
                return "editBook";
            }
            writeFile(file, book);
        }

        if (img.isEmpty()) {
            book.setImg(booksService.get(id).getImg());
        } else {
            newsService.fileValidator(result, file);
            if (result.hasErrors()) {
                return "editBook";
            }
            writeImage(img, book);
        }
        if (result.hasErrors()) {
            return "editBook";
        }
        booksService.update(book);

        return "redirect:/index";
    }

    @PreAuthorize("isAuthenticated()")
    @RequestMapping("/delete/{id}")
    public String delete(@PathVariable("id") Integer id) {

        booksService.delete(id);

        return "redirect:/books/add";
    }
/*
    @PreAuthorize("isAuthenticated()")
    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String editNews(@PathVariable("id") Integer id, ModelMap model) {

        model.addAttribute("news", newsService.getNews(id));
        model.addAttribute("active", "addChart");
        model.addAttribute("categoryAll", categoryService.getAllCategory());

        return "editNews";
    }

    @PreAuthorize("isAuthenticated()")
    @RequestMapping(value = "/edit/{id}", method = RequestMethod.POST)
    public String editNewsDo(@ModelAttribute("news") News news, BindingResult result,
                             @PathVariable("id") Integer id, @RequestParam("file") MultipartFile file, ModelMap model) {
        model.addAttribute("active", "addChart");
        if (file.isEmpty()) {
            news.setFile(newsService.getNews(id).getFile());
            news.setFilename(newsService.getNews(id).getFilename());
        } else {
            newsService.fileValidator(result, file);
            if (result.hasErrors()) {
                model.addAttribute("categoryAll", categoryService.getAllCategory());
                return "editNews";
            }
            setBlob(news, file);
        }
        newsService.updateNews(news);

        return "redirect:/index";
    }

    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public String search(@RequestParam(value = "query", required = false) String query, ModelMap model) {

        model.addAttribute("newsAll", newsService.searchNews(query));

        return "index";
    }

    @RequestMapping(value = "/tag/{category}", method = RequestMethod.GET)
    public String getNewsByCategory(@PathVariable("category") String category, ModelMap model, Principal principal) {

        model.addAttribute("newsAll", newsService.getNewsByCategory(category));
        model.addAttribute("user", new User());
        model.addAttribute("tags", categoryService.getAllCategoryTags());
        model.addAttribute("events", eventsService.getAll());
        if (principal != null) {
            String name = principal.getName();
            model.addAttribute("username", name);
        }
        return "index";
    }

    @RequestMapping(value = "/getImage/{id}")
    public String getUserImage(HttpServletResponse response, @PathVariable("id") int id) throws IOException {

        byte[] file = newsService.getNews(id).getFile();
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

        model.addAttribute("news", newsService.getNews(id));
        model.addAttribute("user", new User());
        if (principal != null) {
            String name = principal.getName();
            model.addAttribute("username", name);
        }

        return "viewNews";
    }

    private void setBlob(News news, MultipartFile file) {
        try {
            byte[] blob = file.getBytes();
            news.setFilename(file.getOriginalFilename());
            news.setContentType(file.getContentType());
            news.setFile(blob);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }*/


    public void bookfileValidator(BindingResult result, MultipartFile file) {
        int maxlenght = 100 * 1024 * 1024;//100mb
        if (file.getSize() > maxlenght)
            result.rejectValue("bookfile", "file.error.maxsize", "файл > 100mb");
    }

    public void writeFile(MultipartFile file, Book book) {
        book.setFile(file.getOriginalFilename());
        File bookfile = new File(filePath + "/files/" + file.getOriginalFilename());
        FileOutputStream fos = null;
        try {
            bookfile.createNewFile();
            fos = new FileOutputStream(bookfile);
            IOUtils.copy(file.getInputStream(), fos);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (fos != null) {
                try {
                    fos.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public void writeImage(MultipartFile img, Book book) {
        book.setImg(img.getOriginalFilename());
        File image = new File(filePath + "/img/" + img.getOriginalFilename());
        FileOutputStream fos = null;
        try {
            image.createNewFile();
            fos = new FileOutputStream(image);
            IOUtils.copy(img.getInputStream(), fos);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (fos != null) {
                try {
                    fos.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }

}
