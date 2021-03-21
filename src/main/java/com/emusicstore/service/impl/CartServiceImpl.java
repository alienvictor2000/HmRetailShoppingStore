package com.emusicstore.service.impl;

import com.emusicstore.dao.CartDAO;
import com.emusicstore.model.Cart;
import com.emusicstore.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class CartServiceImpl implements CartService {

    @Autowired
    private CartDAO cartDAO;

    @Override
    @Transactional
    public Cart getCartById(int cartId) {
        return cartDAO.getCartById(cartId);
    }

    @Override
    @Transactional
    public void update(Cart cart) {
        cartDAO.update(cart);
    }
}
