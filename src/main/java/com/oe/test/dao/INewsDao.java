package com.oe.test.dao;

import com.oe.test.model.News;

import java.util.List;

public interface INewsDao {

    public void addNews(News news);

    public List<News> getAllNews();

    public void deleteNews(Integer id);

    public News getNews(Integer id);

    public void updateNews(News news);

}
