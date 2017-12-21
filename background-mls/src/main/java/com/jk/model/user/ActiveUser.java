package com.jk.model.user;

import java.util.Iterator;
import java.util.List;

import com.jk.model.tree.Tree;
import com.sun.org.apache.bcel.internal.generic.NEW;

/**
 * 用户身份信息，存入session 由于tomcat将session会序列化在本地硬盘上，所以使用Serializable接口
 * 
 * @author Thinkpad
 * 
 */
public class ActiveUser implements java.io.Serializable {
	private Integer userid;//用户id（主键）
	private String username;// 用户账号

	private List<Tree> menus;// 菜单
	private List<Tree> permissions;// 权限

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public List<Tree> getMenus() {
		return menus;
	}

	public void setMenus(List<Tree> menus) {
		this.menus = menus;
	}

	public List<Tree> getPermissions() {
		return permissions;
	}

	public void setPermissions(List<Tree> permissions) {
		this.permissions = permissions;
	}
}
