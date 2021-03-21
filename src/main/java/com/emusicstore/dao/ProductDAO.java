package com.emusicstore.dao;

import com.emusicstore.model.Product;

import java.util.List;

public interface ProductDAO {

    void addProduct(Product product);

    void editProduct(Product product);

    Product getProductById(int id);

    List<Product> getProductList();

    void deleteProduct(Product product);
}
