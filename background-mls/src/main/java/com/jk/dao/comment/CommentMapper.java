package com.jk.dao.comment;


import com.jk.model.comment.Comment;
import com.jk.model.goods.Goods;
import com.jk.model.user.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CommentMapper {
    int deleteByPrimaryKey(Integer commentid);

    int insert(Comment record);

    int insertSelective(Comment record);

    Comment selectByPrimaryKey(Integer commentid);

    int updateByPrimaryKeySelective(Comment record);

    int updateByPrimaryKey(Comment record);

    long queryCount(Comment comment);

    List<Comment> queryComment(@Param("start") int start, @Param("end") int end, @Param("comment") Comment comment, @Param("aid") int aid);

    void deleteOne(int id);

    void deleteByid(String ids);


    Comment queryUpdateComment(String commentcont);

    void addComment(Comment comment);
}