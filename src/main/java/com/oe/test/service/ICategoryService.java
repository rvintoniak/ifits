package com.oe.test.service;

import com.oe.test.model.Category;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public interface ICategoryService {
    public void addCategory(Category category);

    public Map<Integer, String> getAllCategory();

    public void deleteCategory(Integer id);

    public Category getCategory(Integer id);

    public void updateCategory(Category category);

}
