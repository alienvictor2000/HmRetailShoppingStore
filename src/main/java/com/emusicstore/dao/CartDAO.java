package com.emusicstore.dao;

import com.emusicstore.model.Cart;

import java.io.IOException;

public interface CartDAO {

    Cart getCartById(int cartId);

    void update(Cart cart);

    Cart validate (int cartId) throws IOException;
}
