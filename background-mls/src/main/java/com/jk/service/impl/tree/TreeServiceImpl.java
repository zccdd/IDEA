package com.jk.service.impl.tree;

import com.jk.dao.tree.TreeMapper;
import com.jk.model.tree.Tree;
import com.jk.service.tree.TreeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by java111 on 2017/12/18.
 */
@Service
public class TreeServiceImpl implements TreeService {

    @Autowired
    private TreeMapper treeMapper;

    public List<Tree> queryRightTree() {

        return treeMapper.queryRightTree();
    }

    public List<Tree> findMenuListByUserId(Integer uid, String menu) throws Exception{
        List<Tree> menuListByUserId = treeMapper.findMenuListByUserId(uid, menu);
        return menuListByUserId;

    }
}
