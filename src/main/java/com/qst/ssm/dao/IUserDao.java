package com.qst.ssm.dao;
/**
 * 用户Dao层接口
 */

import com.qst.ssm.entity.User;
import org.apache.ibatis.annotations.Param;

public interface IUserDao {

    public User findUser( @Param("username") String username, @Param("password") String password);
    public int changePW(@Param("oldPassword")String oldPassword,@Param("newPassword") String newPassword);
}
