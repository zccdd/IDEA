package com.jk.dao.tree;

import com.jk.model.tree.Tree;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TreeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Tree record);

    int insertSelective(Tree record);

    Tree selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Tree record);

    int updateByPrimaryKey(Tree record);

    List<Tree> queryRightTree();

    List<Tree> findMenuListByUserId(@Param(value="uid") Integer uid, @Param(value="menu") String menu) throws Exception;
}