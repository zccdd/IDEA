package com.jk.service;

import com.jk.model.Order;

import java.util.List;

/**
 * Created by dell on 2017/12/20.
 */
public interface OderService {
    void insertOrder(Order order);

    List<Order> queryOrder(int uid);

    void updateOrderByUid(int uid);
}
