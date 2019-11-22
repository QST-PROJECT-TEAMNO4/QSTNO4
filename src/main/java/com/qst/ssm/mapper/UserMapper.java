package com.qst.ssm.mapper;

import com.qst.ssm.entity.User;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {
    public User findUser( @Param("username") String username, @Param("password") String password);

    public int changePW(@Param("oldPassword")String oldPassword,@Param("newPassword") String newPassword);
}
