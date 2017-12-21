package com.jk.model;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class Order implements Serializable{

    private static final long serialVersionUID = 5868767723013587686L;
    private Integer oid;
    private Integer aid;
    private Integer uid;
    private Integer gid;
    private BigDecimal total;
    private String address;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    @JsonFormat(pattern="yyyy-MM-dd",timezone = "GMT+8")
    private Date creatime;
    private String status;
    private String onumber;
    private Integer ocount;
    public Integer getOid() {
        return oid;
    }

    public void setOid(Integer oid) {
        this.oid = oid;
    }

    public Integer getAid() {
        return aid;
    }

    public void setAid(Integer aid) {
        this.aid = aid;
    }

    public Integer getUid() {
        return uid;
    }

    public Integer getGid() {
        return gid;
    }



    public void setGid(Integer gid) {
        this.gid = gid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public BigDecimal getTotal() {
        return total;
    }

    public void setTotal(BigDecimal total) {
        this.total = total;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public Date getCreatime() {
        return creatime;
    }

    public void setCreatime(Date creatime) {
        this.creatime = creatime;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public String getOnumber() {
        return onumber;
    }

    public void setOnumber(String onumber) {
        this.onumber = onumber;
    }

    public Integer getOcount() {
        return ocount;
    }

    public void setOcount(Integer ocount) {
        this.ocount = ocount;
    }
}