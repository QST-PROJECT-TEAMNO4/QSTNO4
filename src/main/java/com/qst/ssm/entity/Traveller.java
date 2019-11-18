package com.qst.ssm.entity;

import org.apache.ibatis.type.Alias;

@Alias("traveller")
public class Traveller {

    private Integer id; //主键
    private String lkname; //旅客姓名
    private Integer sex;       //性别（默认1）
    private Integer phoneNum;  //电话号码
    private Integer credentialsType;//证件类型（默认0,0身份证，1护照，2军官证）
    private String credentialsNum; //证件号码
    private Integer travellerType; //旅客类型（默认0,0成人，1儿童）

    public Traveller() {
    }

    public Traveller(Integer id, String lkname, Integer sex, Integer phoneNum, Integer credentialsType, String credentialsNum, Integer travellerType) {
        this.id = id;
        this.lkname = lkname;
        this.sex = sex;
        this.phoneNum = phoneNum;
        this.credentialsType = credentialsType;
        this.credentialsNum = credentialsNum;
        this.travellerType = travellerType;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getLkname() {
        return lkname;
    }

    public void setLkname(String lkname) {
        this.lkname = lkname;
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public Integer getPhoneNum() {
        return phoneNum;
    }

    public void setPhoneNum(Integer phoneNum) {
        this.phoneNum = phoneNum;
    }

    public Integer getCredentialsType() {
        return credentialsType;
    }

    public void setCredentialsType(Integer credentialsType) {
        this.credentialsType = credentialsType;
    }

    public String getCredentialsNum() {
        return credentialsNum;
    }

    public void setCredentialsNum(String credentialsNum) {
        this.credentialsNum = credentialsNum;
    }

    public Integer getTravellerType() {
        return travellerType;
    }

    public void setTravellerType(Integer travellerType) {
        this.travellerType = travellerType;
    }

    @Override
    public String toString() {
        return "Traveller{" +
                "id=" + id +
                ", lkname='" + lkname + '\'' +
                ", sex=" + sex +
                ", phoneNum=" + phoneNum +
                ", credentialsType=" + credentialsType +
                ", credentialsNum='" + credentialsNum + '\'' +
                ", travellerType=" + travellerType +
                '}';
    }
}
