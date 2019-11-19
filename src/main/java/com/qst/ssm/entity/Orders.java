package com.qst.ssm.entity;

import org.apache.ibatis.type.Alias;

import java.util.Date;

@Alias("orders")
public class Orders {
    private Integer id; //主键，无意义
    private String orderNum;//订单编号
    private Date orderTime; //下单时间
    private Integer peopleCount;//出行人数
    private String orderDesc;//订单描述
    private Integer payType;     //支付方式（默认0，0支付宝，1微信，2其他）
    private Integer orderStatus; //订单状态（默认0,0未支付，1已支付）
    private Integer productId;   // 产品ID，外键
    private Integer memberId;    //会员ID，外键

    public Orders() {
    }

    public Orders(Integer id, String orderNum, Date orderTime, Integer peopleCount, String orderDesc, Integer payType, Integer orderStatus, Integer productId, Integer memberId) {
        this.id = id;
        this.orderNum = orderNum;
        this.orderTime = orderTime;
        this.peopleCount = peopleCount;
        this.orderDesc = orderDesc;
        this.payType = payType;
        this.orderStatus = orderStatus;
        this.productId = productId;
        this.memberId = memberId;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getOrderNum() {
        return orderNum;
    }

    public void setOrderNum(String orderNum) {
        this.orderNum = orderNum;
    }

    public Date getOrderTime() {
        return orderTime;
    }

    public void setOrderTime(Date orderTime) {
        this.orderTime = orderTime;
    }

    public Integer getPeopleCount() {
        return peopleCount;
    }

    public void setPeopleCount(Integer peopleCount) {
        this.peopleCount = peopleCount;
    }

    public String getOrderDesc() {
        return orderDesc;
    }

    public void setOrderDesc(String orderDesc) {
        this.orderDesc = orderDesc;
    }

    public Integer getPayType() {
        return payType;
    }

    public void setPayType(Integer payType) {
        this.payType = payType;
    }

    public Integer getOrderStatus() {

        return orderStatus;
    }

    public void setOrderStatus(Integer orderStatus) {
        this.orderStatus = orderStatus;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public Integer getMemberId() {
        return memberId;
    }

    public void setMemberId(Integer memberId) {
        this.memberId = memberId;
    }

    @Override
    public String toString() {
        return "Orders{" +
                "id=" + id +
                ", orderNum='" + orderNum + '\'' +
                ", orderTime=" + orderTime +
                ", peopleCount=" + peopleCount +
                ", orderDesc='" + orderDesc + '\'' +
                ", payType=" + payType +
                ", orderStatus=" + orderStatus +
                ", productId=" + productId +
                ", memberId=" + memberId +
                '}';
    }
}
