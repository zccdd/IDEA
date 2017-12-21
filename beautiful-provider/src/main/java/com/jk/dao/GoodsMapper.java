package com.jk.dao;

import com.jk.model.Goods;
import com.jk.model.Param;

import java.util.List;

public interface GoodsMapper {
    int deleteByPrimaryKey(Integer gid);

    int insert(Goods record);

    int insertSelective(Goods record);

    Goods selectByPrimaryKey(Integer gid);

    int updateByPrimaryKeySelective(Goods record);

    int updateByPrimaryKey(Goods record);

    List<Goods> query1();
    List<Goods> query2();
    List<Goods> query3();
    List<Goods> query4();
    List<Goods> query5();

    Goods queryGoods(Integer id);
}