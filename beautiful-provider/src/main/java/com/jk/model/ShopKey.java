package com.jk.model;

import java.io.Serializable;

public class ShopKey implements Serializable{
    private static final long serialVersionUID = 4811714793136899483L;
    private Integer uid;

    private Integer gid;

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public Integer getGid() {
        return gid;
    }

    public void setGid(Integer gid) {
        this.gid = gid;
    }
}