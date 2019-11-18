package com.qst.ssm.entity;

import org.apache.ibatis.type.Alias;

@Alias("permission")
public class Permission {

    private Integer id; //主键
    private String permissionName; //权限名
    private String url;  //资源路径

    public Permission() {
    }

    public Permission(Integer id, String permissionName, String url) {
        this.id = id;
        this.permissionName = permissionName;
        this.url = url;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPermissionName() {
        return permissionName;
    }

    public void setPermissionName(String permissionName) {
        this.permissionName = permissionName;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @Override
    public String toString() {
        return "Permission{" +
                "id=" + id +
                ", permissionName='" + permissionName + '\'' +
                ", url='" + url + '\'' +
                '}';
    }
}
