package com.jk.service.impl.user;

import com.jk.dao.tree.TreeMapper;
import com.jk.dao.user.UserMapper;
import com.jk.model.tree.Tree;
import com.jk.model.user.User;
import com.jk.service.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by java111 on 2017/12/18.
 */
@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private TreeMapper treeMapper;

    public User getUserByUsername(String username) {

        return userMapper.getUserByUsername(username);
    }




}
