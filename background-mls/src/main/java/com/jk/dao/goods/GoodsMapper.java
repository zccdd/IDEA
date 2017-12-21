package com.jk.dao.goods;

import com.jk.model.goods.Goods;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface GoodsMapper {
    int deleteByPrimaryKey(Integer gid);

    int insert(Goods record);

    int insertSelective(Goods record);

    Goods selectByPrimaryKey(Integer gid);

    int updateByPrimaryKeySelective(Goods record);

    int updateByPrimaryKey(Goods record);

    void addGoods(Goods goods);

    long queryTeaCount();

    List<Goods> teaPageListTest(@Param("start") int start, @Param("end2") int end);

    void update1(Goods goods);

    long queryTeaCount2();

    List<Goods> teaPageListTest2(@Param("start1") int start, @Param("end3") int end);

    long queryTeaCount22();

    List<Goods> teaPageListTest22(@Param("start11") int start, @Param("end31") int end);

    void updatebo(Goods goods);

    long queryTeaCount221();

    List<Goods> teaPageListTest221(@Param("start111") int start, @Param("end311") int end);

    void updatetong(Goods goods);

    List<Goods> queryByid(Goods goods);
}