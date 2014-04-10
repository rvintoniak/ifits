package com.oe.test.dao;

import com.oe.test.model.Category;
import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class CategoryDao implements ICategoryDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    @Transactional
    public void addCategory(Category category) {
        this.sessionFactory.getCurrentSession().save(category);

    }

    @SuppressWarnings("unchecked")
    @Override
    @Transactional
    public Map<Integer, String> getAllCategory() {
        Map<Integer, String> map = new HashMap<>();
        List<Category> categories = this.sessionFactory.getCurrentSession().createQuery("from Category").list();
        for (Category c : categories) map.put(c.getId(), c.getName());
        return map;
    }
    @Override
    @Transactional
    public void deleteCategory(Integer id) {
        try {
            Category category = (Category) sessionFactory.getCurrentSession().load(Category.class,
                    id);
            if (null != category) {
                this.sessionFactory.getCurrentSession().delete(category);
            }
        } catch (HibernateException he) {
            System.out.println(he.getMessage());
        }
    }

    @Override
    @Transactional
    public Category getCategory(Integer id) {
        Category category = (Category) this.sessionFactory.getCurrentSession().get(Category.class, id);
        return category;
    }

    @Override
    @Transactional
    public void updateCategory(Category category) {

        this.sessionFactory.getCurrentSession().update(category);

    }
    @SuppressWarnings("unchecked")
    @Override
    @Transactional
    public List<Category> getAllCategoryList() {
        return this.sessionFactory.getCurrentSession().createQuery("from Category").list();
    }


}
