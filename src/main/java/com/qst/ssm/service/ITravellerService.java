package com.qst.ssm.service;

import com.qst.ssm.entity.Traveller;

/**
 * 旅客业务接口
 */
public interface ITravellerService  {
    /**
     * 根据订单Id查询旅客信息
     * @param Id
     * @return
     */
    Traveller getOrdersTraveller(int Id);
}
