package com.jk.service.impl.comment;

import com.alibaba.fastjson.JSONObject;
import com.jk.dao.comment.CommentMapper;
import com.jk.model.comment.Comment;
import com.jk.service.comment.CommentService;
import com.jk.util.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2017/12/18.
 */
@Service("commentService")
public class CommentServiceImpl implements CommentService{

    @Autowired
    private CommentMapper commentMapper;

    public JSONObject queryComment(int page, int rows, Comment comment,int aid) {

        //  1.总条数
        long total = commentMapper.queryCount(comment);
//			int start=(page - 1) * rows;
//			int end = start + rows;
        PageUtil<Comment> pageUtil = new PageUtil<Comment>(page, total, rows);

//			2.当前页展示数据
        List<Comment> menus = commentMapper.queryComment(pageUtil.getStart(),pageUtil.getEnd(),comment,aid);

        JSONObject jsonObj = new JSONObject();
        //！！！！easyui分页时 key的名字要求： 总条数：total    当前页数据：rows
        jsonObj.put("total", total);
        jsonObj.put("rows", menus);
        return jsonObj;
    }



    public void deleteOne(int id) {
        commentMapper.deleteOne(id);
    }

    public void deleteByid(String ids) {
        commentMapper.deleteByid(ids);
    }

    public Comment queryUpdateComment(String commentcont) {
        return commentMapper.queryUpdateComment(commentcont);
    }

    public void addComment(Comment comment) {
        commentMapper.addComment(comment);
    }
}
