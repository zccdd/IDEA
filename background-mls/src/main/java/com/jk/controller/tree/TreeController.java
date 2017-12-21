package com.jk.controller.tree;

import com.jk.model.tree.Tree;
import com.jk.service.tree.TreeService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.security.Security;
import java.util.List;

/**
 * Created by java111 on 2017/12/18.
 */
@Controller
@RequestMapping("TreeController")
public class TreeController {

    @Autowired
    private TreeService treeService;

    @RequestMapping("skipTree")
    public String skipTree(){
        return "WEB-INF\\tree\\index";
    }


    @RequestMapping("queryTree")
    @ResponseBody
    public Object queryRightTree(){

        List<Tree> list=treeService.queryRightTree();
        return list;
    }
}
