package com.jk.service.impl;

import com.jk.dao.OrderMapper;
import com.jk.model.Order;
import com.jk.service.OderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by dell on 2017/12/20.
 */
@Service("oderService")
public class OrderServiceImpl implements OderService {

    @Autowired
    private OrderMapper orderMapper;

    @Override
    public void insertOrder(Order order) {
        orderMapper.insert(order);
    }

    @Override
    public List<Order> queryOrder(int uid) {
        return orderMapper.queryOrder(uid);
    }

    @Override
    public void updateOrderByUid(int uid) {
        orderMapper.updateOrderByUid(uid);
    }
}
