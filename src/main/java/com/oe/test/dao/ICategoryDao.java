package com.oe.test.dao;

import com.oe.test.model.Category;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface ICategoryDao {

    public void addCategory(Category category);

    public Map<Integer, String> getAllCategory();

    public void deleteCategory(Integer id);

    public Category getCategory(Integer id);

    public void updateCategory(Category category);

    public List<Category> getAllCategoryList();
}
