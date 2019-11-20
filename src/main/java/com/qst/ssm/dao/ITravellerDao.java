package com.qst.ssm.dao;

import com.qst.ssm.entity.Traveller;

public interface ITravellerDao {
    /**
     * 根据订单Id查询旅客信息
     * @param Id
     * @return
     */
    Traveller getOrdersTraveller(int Id);
}
