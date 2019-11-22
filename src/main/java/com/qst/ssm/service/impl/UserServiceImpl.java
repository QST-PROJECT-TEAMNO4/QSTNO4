package com.qst.ssm.service.impl;

import com.qst.ssm.dao.IUserDao;
import com.qst.ssm.entity.User;
import com.qst.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 用户Service接口实现类
 */
@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {
    //注入UserDao
    @Autowired
    private IUserDao userDao;

    //通过账号和密码查询用户
    @Override
    public User findUser(String username, String password) {
        User user = userDao.findUser(username, password);
        return user;
    }
    @Override
    public int changePW(String oldPassword,String newPassword){
        return userDao.changePW(oldPassword, newPassword);
    }
}
