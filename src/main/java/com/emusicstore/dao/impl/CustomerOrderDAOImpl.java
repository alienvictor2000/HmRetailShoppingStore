package com.emusicstore.dao.impl;

import com.emusicstore.dao.CustomerOrderDAO;
import com.emusicstore.model.CustomerOrder;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CustomerOrderDAOImpl implements CustomerOrderDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void addCustomerOrder(CustomerOrder customerOrder) {
        Session session = sessionFactory.getCurrentSession();

        session.saveOrUpdate(customerOrder);

        session.flush();
    }
}
