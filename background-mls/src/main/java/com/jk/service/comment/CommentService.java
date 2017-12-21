package com.jk.service.comment;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.comment.Comment;
import com.jk.model.goods.Goods;
import com.jk.model.user.User;

/**
 * Created by Administrator on 2017/12/18.
 */
public interface CommentService {
    JSONObject queryComment(int page, int rows, Comment comment, int aid);

    void deleteOne(int id);

    void deleteByid(String ids);

    Comment queryUpdateComment(String commentcont);

    void addComment(Comment comment);


}
