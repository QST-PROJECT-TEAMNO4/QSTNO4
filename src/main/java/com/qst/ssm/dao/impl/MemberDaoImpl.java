package com.qst.ssm.dao.impl;

<<<<<<< HEAD

=======
>>>>>>> origin/master
import com.qst.ssm.dao.IMemberDao;
import com.qst.ssm.entity.Member;
import com.qst.ssm.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

<<<<<<< HEAD
import java.util.List;

@Repository("memberDao")
public class MemberDaoImpl implements IMemberDao {

=======
@Repository("memberDao")
public class MemberDaoImpl implements IMemberDao {
>>>>>>> origin/master
    @Autowired
    @Qualifier("memberMapper")
    private MemberMapper memberMapper;

<<<<<<< HEAD

    @Override
    public List<Member> findAll() {
        return memberMapper.findAll();
    }

    @Override
    public List<Member> findByKeyWord(String Keyword) {
        return memberMapper.findByKeyWord(Keyword);
    }

    @Override
    public Member findById(int Id) {
        return memberMapper.findById(Id);
    }

    @Override
    public int add(Member member) {
        return memberMapper.add(member);
    }

    @Override
    public int delete(int Id) {
        return memberMapper.delete(Id);
    }

    @Override
    public int update(Member member) {
        return memberMapper.update(member);
=======
    /**
     * 根据订单ID查询会员信息
     * @param Id
     * @return
     */
    @Override
    public Member getOrdersMember(int Id) {
        return memberMapper.getOrdersMember(Id);
>>>>>>> origin/master
    }
}
