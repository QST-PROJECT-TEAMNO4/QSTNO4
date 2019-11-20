package com.qst.ssm.dao;

import com.qst.ssm.entity.Member;

public interface IMemberDao {
    /**
     * 根据订单Id查询会员信息
     * @param Id
     * @return
     */
    Member getOrdersMember(int Id);
}
