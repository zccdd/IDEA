package com.jk.dao;

import com.jk.model.Param;

import java.util.List;

public interface ParamMapper {
    int deleteByPrimaryKey(Integer pid);

    int insert(Param record);

    int insertSelective(Param record);

    Param selectByPrimaryKey(Integer pid);

    int updateByPrimaryKeySelective(Param record);

    int updateByPrimaryKey(Param record);

    List<Param> getAllchima(String key);
}