package com.jk.dao.param;

import com.jk.model.param.Param;

public interface ParamMapper {
    int deleteByPrimaryKey(Integer pid);

    int insert(Param record);

    int insertSelective(Param record);

    Param selectByPrimaryKey(Integer pid);

    int updateByPrimaryKeySelective(Param record);

    int updateByPrimaryKey(Param record);
}