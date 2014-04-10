package com.oe.test.service;

import com.oe.test.dao.INewsDao;
import com.oe.test.dao.IUserDao;
import com.oe.test.model.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.BindingResult;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Service
public class NewsService implements INewsService {

    @Autowired
    private INewsDao iNewsDao;

    @Autowired
    private IUserDao iUserDao;

    public void setiUserDao(IUserDao iUserDao) {
        this.iUserDao = iUserDao;
    }

    @Override
    @Transactional
    public void addNews(News news) {
        iNewsDao.addNews(news);

    }

    @Override
    @Transactional
    public List<News> getAllNews() {
        return iNewsDao.getAllNews();
    }

    @Override
    @Transactional
    public void deleteNews(Integer id) {
        iNewsDao.deleteNews(id);

    }

    @Override
    @Transactional
    public News getNews(Integer id) {
        return iNewsDao.getNews(id);
    }

    @Override
    @Transactional
    public void updateNews(News news) {
        iNewsDao.updateNews(news);

    }

    @Override
    public List<News> searchNews(String query) {
        return iNewsDao.searchNews(query);
    }

    public void fileValidator(BindingResult result, MultipartFile file) {
        int maxlenght = 5 * 1024 * 1024;//5mb
        if (file.getSize() != 0) {
            if (!file.getContentType().startsWith("image/"))
                result.rejectValue("file", "file.error.onlyimage", "Тільки картинки");
        }
        if (file.getSize() > maxlenght)
            result.rejectValue("file", "file.error.maxsize", "файл > 5mb");
    }

    @Override
    public List<News> getNewsByCategory(String category) {
        return iNewsDao.getNewsByCategory(category);
    }
}
