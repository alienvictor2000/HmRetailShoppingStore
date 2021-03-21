package com.emusicstore.service.impl;

import com.emusicstore.dao.ProductDAO;
import com.emusicstore.model.Product;
import com.emusicstore.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductDAO productDAO;

    @Override
    @Transactional
    public List<Product> getProductList() {
        return productDAO.getProductList();
    }

    @Override
    @Transactional
    public Product getProductById(int id) {
        return productDAO.getProductById(id);
    }

    @Override
    @Transactional
    public void addProduct(Product product) {
        productDAO.addProduct(product);
    }

    @Override
    @Transactional
    public void editProduct(Product product) {
        productDAO.editProduct(product);
    }

    @Override
    @Transactional
    public void deleteProduct(Product product) {
        productDAO.deleteProduct(product);
    }
}
