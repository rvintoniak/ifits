package com.oe.test.service;

import com.oe.test.model.Book;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Service
public interface IBooksService {

    public void add(Book book);

    public List<Book> getAll();

    public void delete(Integer id);

    public Book get(Integer id);

    public void update(Book book);

    public void fileValidator(BindingResult result, MultipartFile file);


}
