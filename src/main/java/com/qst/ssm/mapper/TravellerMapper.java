package com.qst.ssm.mapper;

import com.qst.ssm.entity.Traveller;

public interface TravellerMapper {
    /**
     * 根据订单Id查询旅客信息
     * @param Id
     * @return
     */
    Traveller getOrdersTraveller(int Id);
}
