package com.qst.ssm.service.impl;

import com.qst.ssm.dao.IOrdersDao;
import com.qst.ssm.entity.Orders;
import com.qst.ssm.service.IOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("ordersService")
public class OrdersServiceImpl implements IOrderService {
    @Autowired
    @Qualifier("ordersDao")
    private IOrdersDao ordersDao;

    @Transactional(propagation = Propagation.REQUIRED,readOnly = true)
    @Override
    public List<Orders> queryOrders() {
        return ordersDao.queryOrders();
    }

    @Override
    public Orders getOrders(int Id) {
        return ordersDao.getOrders(Id);
    }

    @Override
    public int insertOrders(Orders orders) {
        return insertOrders(orders);
    }


}
