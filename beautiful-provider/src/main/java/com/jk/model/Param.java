package com.jk.model;

import java.io.Serializable;

public class Param implements Serializable{

    private static final long serialVersionUID = -74025346039458111L;
    private Integer pid;

    private String key;

    private String value;

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key == null ? null : key.trim();
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value == null ? null : value.trim();
    }
}