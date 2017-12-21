package com.jk.model.consult;

import java.io.Serializable;

public class Consult implements Serializable{
    private static final long serialVersionUID = -110675433288981378L;
    private Integer consultid;

    private Integer uid;

    private Integer aid;

    private String consultcon;

    private Integer consultstate;

    private String uname;

    private String aname;

    private Integer consult1;

    private String consult2;

    private String consult3;

    public Integer getConsultid() {
        return consultid;
    }

    public void setConsultid(Integer consultid) {
        this.consultid = consultid;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public Integer getAid() {
        return aid;
    }

    public void setAid(Integer aid) {
        this.aid = aid;
    }

    public String getConsultcon() {
        return consultcon;
    }

    public void setConsultcon(String consultcon) {
        this.consultcon = consultcon == null ? null : consultcon.trim();
    }

    public Integer getConsultstate() {
        return consultstate;
    }

    public void setConsultstate(Integer consultstate) {
        this.consultstate = consultstate;
    }

    public Integer getConsult1() {
        return consult1;
    }

    public void setConsult1(Integer consult1) {
        this.consult1 = consult1;
    }

    public String getConsult2() {
        return consult2;
    }

    public void setConsult2(String consult2) {
        this.consult2 = consult2 == null ? null : consult2.trim();
    }

    public String getConsult3() {
        return consult3;
    }

    public void setConsult3(String consult3) {
        this.consult3 = consult3 == null ? null : consult3.trim();
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getAname() {
        return aname;
    }

    public void setAname(String aname) {
        this.aname = aname;
    }
}