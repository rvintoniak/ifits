package com.oe.test.service;

import com.oe.test.model.News;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface INewsService {
    public void addNews(News news);

    public List<News> getAllNews();

    public void deleteNews(Integer id);

    public News getNews(Integer id);

    public void updateNews(News news);

    public List<News> searchNews(String query);
}
