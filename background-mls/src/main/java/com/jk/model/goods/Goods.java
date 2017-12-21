package com.jk.model.goods;

import java.math.BigDecimal;

public class Goods {
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

    private Integer gstart;

    public Integer getGstart() {
        return gstart;
    }

    public void setGstart(Integer gstart) {
        this.gstart = gstart;
    }

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


    @Override
    public String toString() {
        return "Goods{" +
                "gid=" + gid +
                ", gname='" + gname + '\'' +
                ", gimg='" + gimg + '\'' +
                ", gtype='" + gtype + '\'' +
                ", gprice=" + gprice +
                ", gjieshao='" + gjieshao + '\'' +
                ", gcount=" + gcount +
                ", gsize=" + gsize +
                ", gcolor=" + gcolor +
                ", gmaterial=" + gmaterial +
                ", gsales=" + gsales +
                ", gaid=" + gaid +
                ", gstart=" + gstart +
                '}';
    }
}