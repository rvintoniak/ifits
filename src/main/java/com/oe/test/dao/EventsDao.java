package com.oe.test.dao;

import com.oe.test.model.Event;
import com.oe.test.model.News;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public class EventsDao implements IEventsDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    @Transactional
    public void add(Event event) {
        this.sessionFactory.getCurrentSession().save(event);

    }

    @SuppressWarnings("unchecked")
    @Override
    @Transactional
    public List<Event> getAll() {
        return this.sessionFactory.getCurrentSession().createQuery("from Event e order by e.id desc")
                .list();
    }


    @Override
    @Transactional
    public void delete(Integer id) {
        try {
            Event event = (Event) sessionFactory.getCurrentSession().load(Event.class,  id);
            if (null != event) {
                this.sessionFactory.getCurrentSession().delete(event);
            }
        } catch (HibernateException he) {
            System.out.println(he.getMessage());
        }
    }

    @Override
    @Transactional
    public Event get(Integer id) {
        Event event = (Event) this.sessionFactory.getCurrentSession().get(Event.class, id);
        return event;
    }

    @Override
    @Transactional
    public void update(Event event) {
        this.sessionFactory.getCurrentSession().update(event);
    }



}
