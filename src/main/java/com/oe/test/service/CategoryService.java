package com.oe.test.service;

import com.oe.test.dao.ICategoryDao;
import com.oe.test.model.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class CategoryService implements ICategoryService {


    @Autowired
    private ICategoryDao categoryDao;

    @Override
    public void addCategory(Category category) {
        categoryDao.addCategory(category);
    }

    @Override
    public Map<Integer, String> getAllCategory() {
        return categoryDao.getAllCategory();
    }

    @Override
    public void deleteCategory(Integer id) {
        categoryDao.deleteCategory(id);
    }

    @Override
    public Category getCategory(Integer id) {
        return categoryDao.getCategory(id);
    }

    @Override
    public void updateCategory(Category category) {
        categoryDao.updateCategory(category);
    }

    @Override
    public List<Category> getAllCategoryList() {
        return categoryDao.getAllCategoryList();
    }
}
