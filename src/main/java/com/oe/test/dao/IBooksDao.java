package com.oe.test.dao;

import com.oe.test.model.Book;

import java.util.List;

/**
 * Created by us8610 on 11.04.14.
 */
public interface IBooksDao {

    public void add(Book book);

    public List<Book> getAll();

    public void delete(Integer id);

    public Book get(Integer id);

    public void update(Book book);

}
