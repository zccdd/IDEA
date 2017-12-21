package com.jk.model.coupons;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by k偏执` on 2017/12/18.
 */
public class Couponsn implements Serializable{

    private static final long serialVersionUID = 1114852222339838840L;
    private Integer couponsId;
    private String couponsName;
    private String couponsLmg;
    private String couponsType;
    private Date startedTime;
    private Date comeTime;
    private String description;
    private Integer couponsPriority;
    private Integer grade;
    private Integer state;
    private Integer active;


    public Integer getCouponsId() {
        return couponsId;
    }

    public void setCouponsId(Integer couponsId) {
        this.couponsId = couponsId;
    }

    public String getCouponsName() {
        return couponsName;
    }

    public void setCouponsName(String couponsName) {
        this.couponsName = couponsName;
    }

    public String getCouponsLmg() {
        return couponsLmg;
    }

    public void setCouponsLmg(String couponsLmg) {
        this.couponsLmg = couponsLmg;
    }

    public String getCouponsType() {
        return couponsType;
    }

    public void setCouponsType(String couponsType) {
        this.couponsType = couponsType;
    }

    public Date getStartedTime() {
        return startedTime;
    }

    public void setStartedTime(Date startedTime) {
        this.startedTime = startedTime;
    }

    public Date getComeTime() {
        return comeTime;
    }

    public void setComeTime(Date comeTime) {
        this.comeTime = comeTime;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getCouponsPriority() {
        return couponsPriority;
    }

    public void setCouponsPriority(Integer couponsPriority) {
        this.couponsPriority = couponsPriority;
    }

    public Integer getGrade() {
        return grade;
    }

    public void setGrade(Integer grade) {
        this.grade = grade;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public Integer getActive() {
        return active;
    }

    public void setActive(Integer active) {
        this.active = active;
    }

    @Override
    public String toString() {
        return "Couponsn{" +
                "couponsId='" + couponsId + '\'' +
                ", couponsName='" + couponsName + '\'' +
                ", couponsLmg='" + couponsLmg + '\'' +
                ", couponsType='" + couponsType + '\'' +
                ", startedTime=" + startedTime +
                ", comeTime=" + comeTime +
                ", description='" + description + '\'' +
                ", couponsPriority=" + couponsPriority +
                ", grade=" + grade +
                ", state=" + state +
                ", active=" + active +
                '}';
    }



}
