package com.qst.ssm.entity;

import org.apache.ibatis.type.Alias;

import java.util.Date;

@Alias("log")
public class Log {

    private Integer id; //主键
    private Date visitTime; //访问时间
    private String username;//操作者用户名
    private String ip; //访问ip
    private String url;//访问资源路径
    private Integer executionTime; //执行时长
    private String method; //访问方法

    public Log() {
    }

    public Log(Integer id, Date visitTime, String username, String ip, String url, Integer executionTime, String method) {
        this.id = id;
        this.visitTime = visitTime;
        this.username = username;
        this.ip = ip;
        this.url = url;
        this.executionTime = executionTime;
        this.method = method;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getVisitTime() {
        return visitTime;
    }

    public void setVisitTime(Date visitTime) {
        this.visitTime = visitTime;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Integer getExecutionTime() {
        return executionTime;
    }

    public void setExecutionTime(Integer executionTime) {
        this.executionTime = executionTime;
    }

    public String getMethod() {
        return method;
    }

    public void setMethod(String method) {
        this.method = method;
    }

    @Override
    public String toString() {
        return "Log{" +
                "id=" + id +
                ", visitTime=" + visitTime +
                ", username='" + username + '\'' +
                ", ip='" + ip + '\'' +
                ", url='" + url + '\'' +
                ", executionTime=" + executionTime +
                ", method='" + method + '\'' +
                '}';
    }
}
