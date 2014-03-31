package com.oe.test.dao;

import com.oe.test.model.News;
import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public class NewsDao implements INewsDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    @Transactional
    public void addNews(News news) {
        this.sessionFactory.getCurrentSession().save(news);

    }

    @SuppressWarnings("unchecked")
    @Override
    @Transactional
    public List<News> getAllNews() {
        return this.sessionFactory.getCurrentSession().createQuery("from News")
                .list();
    }

    @Override
    @Transactional
    public void deleteNews(Integer id) {
        try {
            News news = (News) sessionFactory.getCurrentSession().load(News.class,
                    id);
            if (null != news) {
                this.sessionFactory.getCurrentSession().delete(news);
            }
        } catch (HibernateException he) {
            System.out.println(he.getMessage());
        }
    }

    @Override
    @Transactional
    public News getNews(Integer id) {
        News news = (News) this.sessionFactory.getCurrentSession().get(News.class, id);
        return news;
    }

    @Override
    @Transactional
    public void updateNews(News news) {

        this.sessionFactory.getCurrentSession().update(news);

    }


}