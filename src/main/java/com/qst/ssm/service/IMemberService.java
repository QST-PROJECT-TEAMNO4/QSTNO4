package com.qst.ssm.service;

import com.qst.ssm.entity.Member;

/**
 * 会员业务接口
 */
public interface IMemberService {
    /**
     * 根据订单Id查询会员信息
     * @param Id
     * @return
     */
    Member getOrdersMember(int Id);
}
