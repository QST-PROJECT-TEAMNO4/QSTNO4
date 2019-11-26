package com.qst.ssm.entity;


import org.apache.ibatis.type.Alias;

@Alias("customer")
public class Customer {
    private Integer id; //主键
    private String email; //邮箱
    private  String name;
    private String username; //用户名
    private String password;//密码
    private Integer sex;//性别
    private String phoneNum;//电话号码
    private String peopleID;


   public Customer(){

    }

    public Customer(Integer id, String email, String name, String username, String password, Integer sex, String phoneNum, String peopleID) {
        this.id = id;
        this.email = email;
        this.name = name;
        this.username = username;
        this.password = password;
        this.sex = sex;
        this.phoneNum = phoneNum;
        this.peopleID = peopleID;
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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public String getPhoneNum() {
        return phoneNum;
    }

    public void setPhoneNum(String phoneNum) {
        this.phoneNum = phoneNum;
    }

    public String getPeopleID() {
        return peopleID;
    }

    public void setPeopleID(String peopleID) {
        this.peopleID = peopleID;
    }

    @Override
    public String toString() {
        return "Customer{" +
                "id=" + id +
                ", email='" + email + '\'' +
                ", name='" + name + '\'' +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", sex=" + sex +
                ", phoneNum='" + phoneNum + '\'' +
                ", peopleID='" + peopleID + '\'' +
                '}';
    }
}
