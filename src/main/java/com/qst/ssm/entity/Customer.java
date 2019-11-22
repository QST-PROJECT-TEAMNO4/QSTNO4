package com.qst.ssm.entity;


import org.apache.ibatis.type.Alias;

@Alias("customer")
public class Customer {
    private Integer id; //主键
    private String email; //邮箱
    private String username; //用户名
    private String password;//密码
    private String phoneNum;//电话号码


   public Customer(){

    }


    public Customer(Integer id, String email, String username, String password, String phoneNum) {
        this.id = id;
        this.email = email;
        this.username = username;
        this.password = password;
        this.phoneNum = phoneNum;
    }





    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhoneNum() {
        return phoneNum;
    }

    public void setPhoneNum(String phoneNum) {
        this.phoneNum = phoneNum;
    }

    @Override
    public String toString() {
        return "Customer{" +
                "id=" + id +
                ", email='" + email + '\'' +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", phoneNum='" + phoneNum + '\'' +
                '}';
    }
}
