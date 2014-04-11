package com.oe.test.dao;

import com.oe.test.model.Event;
import com.oe.test.model.News;

import java.util.List;

/**
 * Created by us8610 on 11.04.14.
 */
public interface IEventsDao {

    public void add(Event event);

    public List<Event> getAll();

    public void delete(Integer id);

    public Event get(Integer id);

    public void update(Event event);


}
