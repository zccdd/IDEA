package com.jk.dao.user;

import com.jk.model.tree.Tree;
import com.jk.model.user.User;

import java.util.List;

public interface UserMapper {
    int deleteByPrimaryKey(Integer uid);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer uid);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    User getUserByUsername(String username);

    List<Tree> findMenuListByUserId(Integer uid, String menu);
}