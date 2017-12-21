package com.jk.service.order;

import com.alibaba.fastjson.JSONObject;

import com.jk.model.order.Order;

/**
 * @Date: 2017/12/18 17:13
 */
public interface OrderService {
    JSONObject queryOrder(int page, int rows, Order order, int aid);

    void updateOrder2(Order order);
    JSONObject queryOrder2(int page, int rows, Order order, int aid);

    void updateOrder3(Order order);
    JSONObject queryOrder3(int page, int rows, Order order, int aid);

    void updateOrder4(Order order);

    JSONObject queryOrder4(int page, int rows, Order order, int aid);

    void updateOrder5(Order order);

    JSONObject queryOrder5(int page, int rows, Order order, int aid);


}
