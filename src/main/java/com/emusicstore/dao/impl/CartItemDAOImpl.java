package com.emusicstore.dao.impl;

import com.emusicstore.dao.CartItemDAO;
import com.emusicstore.model.Cart;
import com.emusicstore.model.CartItem;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class CartItemDAOImpl implements CartItemDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void addCartItem(CartItem cartItem) {
        Session session = sessionFactory.getCurrentSession();

        session.saveOrUpdate(cartItem);

        session.flush();
    }

    @Override
    public void removeCartItem(CartItem cartItem) {
        Session session = sessionFactory.getCurrentSession();

        session.delete(cartItem);

        session.flush();
    }

    @Override
    public void removeAllCartItems(Cart cart) {
        List<CartItem> cartItemList = cart.getCartItemList();

        for(CartItem cartItem: cartItemList){
            removeCartItem(cartItem);
        }
    }

    @Override
    public CartItem getCartItemByProductId(int productId) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from CartItem where productId = ?0");
        query.setInteger(0,productId);
        session.flush();

        return (CartItem) query.uniqueResult();
    }
}
