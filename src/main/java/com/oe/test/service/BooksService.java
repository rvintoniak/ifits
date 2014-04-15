package com.oe.test.service;

import com.oe.test.dao.IBooksDao;
import com.oe.test.model.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Service
public class BooksService implements IBooksService {

    @Autowired
    private IBooksDao booksDao;

    @Autowired
    private INewsService newsService;


    @Override
    public void add(Book book) {
        booksDao.add(book);
    }

    @Override
    public List<Book> getAll() {
        return booksDao.getAll();
    }

    @Override
    public void delete(Integer id) {
        booksDao.delete(id);
    }

    @Override
    public Book get(Integer id) {
        return booksDao.get(id);
    }

    @Override
    public void update(Book book) {
        booksDao.update(book);
    }

    public void fileValidator(BindingResult result, MultipartFile file) {
        newsService.fileValidator(result, file);
    }


}
