package com.oe.test.service;

import com.oe.test.dao.IEventsDao;
import com.oe.test.dao.INewsDao;
import com.oe.test.dao.IUserDao;
import com.oe.test.model.Event;
import com.oe.test.model.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.BindingResult;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Service
public class EventsService implements IEventsService {

    @Autowired
    private IEventsDao eventsDao;

    @Autowired
    private  INewsService newsService;


    public void fileValidator(BindingResult result, MultipartFile file) {
       newsService.fileValidator(result,file);
    }

    @Override
    public void add(Event event) {
        eventsDao.add(event);
    }

    @Override
    public List<Event> getAll() {
        return eventsDao.getAll();
    }

    @Override
    public void delete(Integer id) {
        eventsDao.delete(id);
    }

    @Override
    public Event get(Integer id) {
        return eventsDao.get(id);
    }

    @Override
    public void update(Event event) {
        eventsDao.update(event);
    }
}
