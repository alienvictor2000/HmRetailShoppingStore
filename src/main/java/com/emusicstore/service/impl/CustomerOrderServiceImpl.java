package com.emusicstore.service.impl;

import com.emusicstore.dao.CustomerOrderDAO;
import com.emusicstore.model.Cart;
import com.emusicstore.model.CartItem;
import com.emusicstore.model.CustomerOrder;
import com.emusicstore.service.CartService;
import com.emusicstore.service.CustomerOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class CustomerOrderServiceImpl implements CustomerOrderService {

    @Autowired
    private CustomerOrderDAO customerOrderDAO;

    private CartService cartService;
    @Override
    @Transactional
    public void addCustomerOrder(CustomerOrder customerOrder) {
        customerOrderDAO.addCustomerOrder(customerOrder);
    }

    @Override
    @Transactional
    public double getCustomerOrderGrandTotal(int cartId) {
        double grandTotal = 0;
        Cart cart = cartService.getCartById(cartId);
        List<CartItem> cartItemList = cart.getCartItemList();

        for(CartItem items : cartItemList){
            grandTotal += items.getTotalPrice();
        }

        return grandTotal;
    }
}
