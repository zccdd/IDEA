package com.jk.service.impl.user;

import com.jk.dao.admin.AdminMapper;
import com.jk.model.admin.Admin;
import com.jk.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by java111 on 2017/12/20.
 */
@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminMapper adminMapper;

    public Admin getUserByUsername(String usercode) {
        return adminMapper.getUserByUsername(usercode);
    }
}
