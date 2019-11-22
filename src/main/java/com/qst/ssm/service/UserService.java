package com.qst.ssm.service;

import com.qst.ssm.entity.User;

/**
 * 用户Service接口
 */
public interface UserService {
    public User findUser(String username, String password);
    public int changePW(String oldPassword,String newPassword);

}
