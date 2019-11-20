package com.qst.ssm.mapper;

import com.qst.ssm.entity.Member;

public interface MemberMapper {
    /**
     * 根据订单Id查询会员信息
     * @param Id
     * @return
     */
    Member getOrdersMember(int Id);
}
