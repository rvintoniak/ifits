package com.oe.test.service;

import com.oe.test.dao.IEventsDao;
import com.oe.test.model.Event;
import com.oe.test.model.News;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Service
public interface IEventsService {

    public void add(Event event);

    public List<Event> getAll();

    public void delete(Integer id);

    public Event get(Integer id);

    public void update(Event event);

    public void fileValidator(BindingResult result, MultipartFile file);


}
