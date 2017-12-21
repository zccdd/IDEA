package com.jk.dao;

import com.jk.model.Order;

import java.util.List;

public interface OrderMapper {
    int deleteByPrimaryKey(Integer oid);

    int insert(Order record);

    int insertSelective(Order record);

    Order selectByPrimaryKey(Integer oid);

    int updateByPrimaryKeySelective(Order record);

    int updateByPrimaryKey(Order record);

    List<Order> queryOrder(int uid);

    void updateOrderByUid(int uid);
}