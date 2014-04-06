package com.oe.test.dao;

import com.oe.test.model.User;
import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public class UserDao implements IUserDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    @Transactional
    public void addUser(User user) {

        this.sessionFactory.getCurrentSession().save(user);

    }

    @SuppressWarnings("unchecked")
    @Override
    @Transactional
    public List<User> getAllUsers() {
        return this.sessionFactory.getCurrentSession().createQuery("from User u inner join u.role r")
                .list();
    }

    @Override
    @Transactional
    public void deleteUser(Integer id) {
        try {
            User user = (User) sessionFactory.getCurrentSession().load(
                    User.class, id);
            if (null != user) {
                this.sessionFactory.getCurrentSession().delete(user);
            }
        } catch (HibernateException he) {
            System.out.println(he.getMessage());
        }
    }

    @Override
    @Transactional
    public User getUserById(Integer id) {
        User user = (User) sessionFactory.getCurrentSession().get(
                User.class, id);
        return user;
    }

    @Override
    @Transactional
    public void updateUser(User user) {

        this.sessionFactory.getCurrentSession().update(user);

    }

    @Override
    @Transactional
    public User getUserByUserName(String username) {
        return (User) this.sessionFactory.getCurrentSession().createCriteria(User.class).
                add(Restrictions.eq("login", username)).
                uniqueResult();
    }

}
