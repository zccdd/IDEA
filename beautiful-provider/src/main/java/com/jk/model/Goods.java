package com.jk.model;

import java.io.Serializable;
import java.math.BigDecimal;

public class Goods implements Serializable {
    private static final long serialVersionUID = 2045155773202087255L;
    private Integer gid;

    private String gname;

    private String gimg;

    private String gtype;

    private BigDecimal gprice;

    private String gjieshao;

    private Integer gcount;

    private Integer gsize;

    private Integer gcolor;

    private Integer gmaterial;

    private Integer gsales;

    private Integer gaid;

    public Integer getGid() {
        return gid;
    }

    public void setGid(Integer gid) {
        this.gid = gid;
    }

    public String getGname() {
        return gname;
    }

    public void setGname(String gname) {
        this.gname = gname == null ? null : gname.trim();
    }

    public String getGimg() {
        return gimg;
    }

    public void setGimg(String gimg) {
        this.gimg = gimg == null ? null : gimg.trim();
    }

    public String getGtype() {
        return gtype;
    }

    public void setGtype(String gtype) {
        this.gtype = gtype == null ? null : gtype.trim();
    }

    public BigDecimal getGprice() {
        return gprice;
    }

    public void setGprice(BigDecimal gprice) {
        this.gprice = gprice;
    }

    public String getGjieshao() {
        return gjieshao;
    }

    public void setGjieshao(String gjieshao) {
        this.gjieshao = gjieshao == null ? null : gjieshao.trim();
    }

    public Integer getGcount() {
        return gcount;
    }

    public void setGcount(Integer gcount) {
        this.gcount = gcount;
    }

    public Integer getGsize() {
        return gsize;
    }

    public void setGsize(Integer gsize) {
        this.gsize = gsize;
    }

    public Integer getGcolor() {
        return gcolor;
    }

    public void setGcolor(Integer gcolor) {
        this.gcolor = gcolor;
    }

    public Integer getGmaterial() {
        return gmaterial;
    }

    public void setGmaterial(Integer gmaterial) {
        this.gmaterial = gmaterial;
    }

    public Integer getGsales() {
        return gsales;
    }

    public void setGsales(Integer gsales) {
        this.gsales = gsales;
    }

    public Integer getGaid() {
        return gaid;
    }

    public void setGaid(Integer gaid) {
        this.gaid = gaid;
    }
}