package com.jk.dao.order;

import com.jk.model.order.Order;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;
import java.util.Set;

public interface OrderMapper {
    int deleteByPrimaryKey(Integer oid);

    int insert(Order record);

    int insertSelective(Order record);

    Order selectByPrimaryKey(Integer oid);

    int updateByPrimaryKeySelective(Order record);

    int updateByPrimaryKey(Order record);

    long queryCount(int aid);

    Set<Map<String,Object>> queryList(@Param("start") int start, @Param("end") int end, @Param("order") Order order, @Param("aid") int aid);

    void updateOrder2(Order order);


    long queryCount2(int aid);
    Set<Map<String,Object>> queryList2(@Param("start") int start, @Param("end") int end, @Param("order") Order order, @Param("aid") int aid);

    void updateOrder3(Order order);

    long queryCount3(int aid);
    Set<Map<String,Object>> queryList3(@Param("start") int start, @Param("end") int end, @Param("order") Order order, @Param("aid") int aid);

    void updateOrder4(Order order);

    long queryCount4(int aid);
    Set<Map<String,Object>> queryList4(@Param("start") int start, @Param("end") int end, @Param("order") Order order, @Param("aid") int aid);

    void updateOrder5(Order order);

    long queryCount5(int aid);
    Set<Map<String,Object>> queryList5(@Param("start") int start, @Param("end") int end, @Param("order") Order order, @Param("aid") int aid);


}