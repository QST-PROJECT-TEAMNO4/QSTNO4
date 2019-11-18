package com.qst.ssm.entity;

import org.apache.ibatis.type.Alias;

@Alias("member")
public class Member {

    private Integer id;//主键
    private String hyname;  //姓名
    private String nickname;//昵称
    private Integer phoneNum;   //电话号码
    private String email;   //邮箱

    public Member() {
    }

    public Member(Integer id, String hyname, String nickname, Integer phoneNum, String email) {
        this.id = id;
        this.hyname = hyname;
        this.nickname = nickname;
        this.phoneNum = phoneNum;
        this.email = email;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getHyname() {
        return hyname;
    }

    public void setHyname(String hyname) {
        this.hyname = hyname;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public Integer getPhoneNum() {
        return phoneNum;
    }

    public void setPhoneNum(Integer phoneNum) {
        this.phoneNum = phoneNum;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "Member{" +
                "id=" + id +
                ", hyname='" + hyname + '\'' +
                ", nickname='" + nickname + '\'' +
                ", phoneNum=" + phoneNum +
                ", email='" + email + '\'' +
                '}';
    }
}
