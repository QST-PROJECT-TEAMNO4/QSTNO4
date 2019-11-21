package com.qst.ssm.mapper;

import com.qst.ssm.entity.Member;

<<<<<<< HEAD
import java.util.List;

public interface MemberMapper {

    /**
     * 查询所有导游信息
     * @return
     */
     List<Member> findAll();

    /**
     * 根据关键字进行模糊查询
     * @param Keyword
     * @return
     */
     List<Member> findByKeyWord(String Keyword);

    /**
     * 根据Id查询导游
     * @param Id
     * @return
     */
    Member findById(int Id);

    /**
     * 添加导游信息
     * @param member
     * @return
     */
     int add(Member member);

    /**
     * 根据Id删除导游信息
     * @param Id
     * @return
     */
     int delete(int Id);

    /**
     * 根据Id修改导游信息
     * @param member
     * @return
     */
    int update(Member member);


=======
public interface MemberMapper {
    /**
     * 根据订单Id查询会员信息
     * @param Id
     * @return
     */
    Member getOrdersMember(int Id);
>>>>>>> origin/master
}
