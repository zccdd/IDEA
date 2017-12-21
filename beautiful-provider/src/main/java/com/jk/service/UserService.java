package com.jk.service;

import com.jk.model.User;

/**
 * Created by dell on 2017/12/19.
 */
public interface UserService {
    User getUserByUsername(String username);
}
