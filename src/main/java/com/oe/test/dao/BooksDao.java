package com.oe.test.dao;

import com.oe.test.model.Book;
import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public class BooksDao implements IBooksDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    @Transactional
    public void add(Book book) {
        this.sessionFactory.getCurrentSession().save(book);

    }

    @SuppressWarnings("unchecked")
    @Override
    @Transactional
    public List<Book> getAll() {
        return this.sessionFactory.getCurrentSession().createQuery("from Book b order by b.id desc")
                .list();
    }


    @Override
    @Transactional
    public void delete(Integer id) {
        try {
            Book book = (Book) sessionFactory.getCurrentSession().load(Book.class, id);
            if (null != book) {
                this.sessionFactory.getCurrentSession().delete(book);
            }
        } catch (HibernateException he) {
            System.out.println(he.getMessage());
        }
    }

    @Override
    @Transactional
    public Book get(Integer id) {
        Book book = (Book) this.sessionFactory.getCurrentSession().get(Book.class, id);
        return book;
    }

    @Override
    @Transactional
    public void update(Book book) {
        this.sessionFactory.getCurrentSession().update(book);
    }


}
