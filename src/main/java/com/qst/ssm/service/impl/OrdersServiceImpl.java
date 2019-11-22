package com.qst.ssm.service.impl;

import com.github.pagehelper.PageHelper;
import com.qst.ssm.dao.IOrdersDao;
import com.qst.ssm.entity.Orders;
import com.qst.ssm.service.IOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Service("ordersService")
public class OrdersServiceImpl implements IOrderService {
    @Autowired
    @Qualifier("ordersDao")
    private IOrdersDao ordersDao;

    /**
     * 查询所有订单
     * @return
     */
    @Transactional(propagation = Propagation.REQUIRED, readOnly = true)
    @Override
    public List<Orders> queryOrders() {
        return ordersDao.queryOrders();
    }

    /**
     * 查询所有订单并进行分页管理
     * @param page
     * @param size
     * @return
     */
    @Override
    public List<Map<String, Object>> queryOrdersProduct(int page,int size) {
        PageHelper.startPage(page,size);
        return ordersDao.queryOrdersProduct();
    }

    /**
     * 根据Id查询订单信息
     * @param Id
     * @return
     */
    @Transactional(propagation = Propagation.REQUIRED, readOnly = true)
    @Override
    public Orders getOrders(int Id) {
        return ordersDao.getOrders(Id);
    }

    /**
     * 添加订单信息
     * @param orders
     * @return
     */
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
    @Override
    public int insertOrders(Orders orders) {
        return ordersDao.insertOrders(orders);
    }
    /**
     * 根据ID删除订单信息
     * @param Id
     * @return
     */
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
    @Override
    public int deleteOrders(int Id) {
        return ordersDao.deleteOrders(Id);
    }
    /**
     * 修改订单信息
     * @param orders
     * @return
     */
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
    @Override
    public int updateOrders(Orders orders) {
        return ordersDao.updateOrders(orders);
    }
    /**
     * 多表查询
     * @return
     */
    @Transactional(propagation = Propagation.REQUIRED, readOnly = true)
    @Override
    public List<Map<String, Object>> queryOrders1() {
        return ordersDao.queryOrdersProduct();
    }


    /**
     * 根据Id查询订单-产品信息
     * @param Id
     * @return
     */
    @Transactional(propagation = Propagation.REQUIRED, readOnly = true)
    @Override
    public Map<String, Object> getOrdersProduct(int Id) {
        return ordersDao.getOrdersProduct(Id);
    }

    /**
     * 对订单-产品信息进行模糊查询
     * @param page
     * @param size
     * @param Keyword 关键字
     * @return
     */
    @Transactional(propagation = Propagation.REQUIRED, readOnly = true)
    @Override
    public List<Map<String, Object>> OPFallAllLike(int page,int size,String Keyword) {
        PageHelper.startPage(page,size);
        return ordersDao.OPFallAllLike(Keyword);
    }


}
