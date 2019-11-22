package com.qst.ssm.dao.impl;

import com.qst.ssm.dao.IUserDao;
import com.qst.ssm.entity.User;
import com.qst.ssm.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("userDao")
public class UserDaoImpl implements IUserDao {
    @Autowired
    private UserMapper userMapper;
    @Override
    public User findUser(String username, String password) {
        return userMapper.findUser(username,password);
    }

    @Override
    public int changePW(String oldPassword, String newPassword){
        return  userMapper.changePW(oldPassword,newPassword);
    }

}
