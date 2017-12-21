package com.jk.service;

import com.jk.model.admin.Admin;

/**
 * Created by java111 on 2017/12/20.
 */
public interface AdminService {
    Admin getUserByUsername(String usercode);
}
