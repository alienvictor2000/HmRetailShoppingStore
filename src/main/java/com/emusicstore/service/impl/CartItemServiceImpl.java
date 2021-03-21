package com.emusicstore.service.impl;

import com.emusicstore.dao.CartItemDAO;
import com.emusicstore.model.Cart;
import com.emusicstore.model.CartItem;
import com.emusicstore.service.CartItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class CartItemServiceImpl implements CartItemService {

    @Autowired
    private CartItemDAO cartItemDAO;

    @Override
    @Transactional
    public void addCartItem(CartItem cartItem) {
        cartItemDAO.addCartItem(cartItem);
    }

    @Override
    @Transactional
    public void removeCartItem(CartItem cartItem) {
        cartItemDAO.removeCartItem(cartItem);

    }

    @Override
    @Transactional
    public void removeAllCartItems(Cart cart) {
        cartItemDAO.removeAllCartItems(cart);
    }

    @Override
    @Transactional
    public CartItem getCartItemByProductId(int productId) {
        return cartItemDAO.getCartItemByProductId(productId);
    }
}
