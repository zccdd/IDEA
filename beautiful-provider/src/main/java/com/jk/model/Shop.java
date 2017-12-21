package com.jk.model;

import java.io.Serializable;
import java.math.BigDecimal;

public class Shop extends ShopKey implements Serializable{
    private static final long serialVersionUID = 7193338357913822650L;
    private Integer aid;

    private BigDecimal price;

    private String name;

    private Integer counts;

    private String tpname;

    public Integer getAid() {
        return aid;
    }

    public void setAid(Integer aid) {
        this.aid = aid;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getCounts() {
        return counts;
    }

    public void setCounts(Integer counts) {
        this.counts = counts;
    }

    public String getTpname() {
        return tpname;
    }

    public void setTpname(String tpname) {
        this.tpname = tpname == null ? null : tpname.trim();
    }
}