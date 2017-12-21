package com.jk.shiro;

import com.jk.dao.tree.TreeMapper;
import com.jk.model.admin.Admin;
import com.jk.model.tree.Tree;
import com.jk.model.user.ActiveUser;
import com.jk.model.user.User;
import com.jk.service.AdminService;
import com.jk.service.tree.TreeService;
import com.jk.service.user.UserService;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by yangzhichao on 2017-12-18.
 */
public class CustomRealm extends AuthorizingRealm {
    @Override
    public void setName(String name) {
        super.setName("customRealm");
    }

    @Autowired
    private AdminService adminService;

    @Autowired
    private TreeService treeService;

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        String usercode = (String) token.getPrincipal();
        Admin userByUsername = adminService.getUserByUsername(usercode);
        if (userByUsername == null) {
            return null;
        }
        String password = userByUsername.getApwd();
        String salt = userByUsername.getSalt();
        ActiveUser activeUser = new ActiveUser();
        activeUser.setUserid(userByUsername.getAid());
        activeUser.setUsername(userByUsername.getAuser());
        //当前用户拥有的所有菜单
        List<Tree> menus = null;
        try {
            menus = treeService.findMenuListByUserId(userByUsername.getAid(), "menu");
        } catch (Exception e) {
            e.printStackTrace();
        }
        activeUser.setMenus(menus);
        SimpleAuthenticationInfo simpleAuthenticationInfo = new SimpleAuthenticationInfo(activeUser, password, this.getName());
        return simpleAuthenticationInfo;
    }

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        return null;
    }

}
