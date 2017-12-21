package com.jk.service.tree;

import com.jk.model.tree.Tree;

import java.util.List;

/**
 * Created by java111 on 2017/12/18.
 */
public interface TreeService {


    List<Tree> queryRightTree();

    List<Tree> findMenuListByUserId(Integer uid, String menu) throws Exception;
}
