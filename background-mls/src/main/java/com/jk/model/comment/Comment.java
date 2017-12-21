package com.jk.model.comment;

import java.io.Serializable;

public class Comment implements Serializable{
    private static final long serialVersionUID = 2776588170100728457L;
    private Integer commentid;

    private String commenttype;

    private String commentcont;

    private String uname;

    private  String gjieshao;
    private String reply;

    public Integer getCommentid() {
        return commentid;
    }

    public void setCommentid(Integer commentid) {
        this.commentid = commentid;
    }

    public String getCommenttype() {
        return commenttype;
    }

    public void setCommenttype(String commenttype) {
        this.commenttype = commenttype == null ? null : commenttype.trim();
    }

    public String getCommentcont() {
        return commentcont;
    }

    public void setCommentcont(String commentcont) {
        this.commentcont = commentcont == null ? null : commentcont.trim();
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getGjieshao() {
        return gjieshao;
    }

    public void setGjieshao(String gjieshao) {
        this.gjieshao = gjieshao;
    }

    public String getReply() {
        return reply;
    }

    public void setReply(String reply) {
        this.reply = reply == null ? null : reply.trim();
    }

}