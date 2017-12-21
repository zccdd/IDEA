package com.jk.service.impl.OrderServiceImpl;

import com.alibaba.fastjson.JSONObject;

import com.jk.dao.order.OrderMapper;
import com.jk.model.order.Order;
import com.jk.service.order.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/**
 * @Date: 2017/12/18 17:13
 */
@Service("orderService")
public class OrderServiceImpl implements OrderService{
    @Autowired
    private OrderMapper orderMapper;

    public JSONObject queryOrder(int page, int rows, Order order,int aid) {
        long total = orderMapper.queryCount(aid);
        int start = (page-1)*rows;
        int end = (start+rows);


        Set<Map<String,Object>> list =new HashSet<Map<String,Object>>();
        list=orderMapper.queryList(start,end,order,aid);
        JSONObject jsonObj3 = new JSONObject();
        jsonObj3.put("total", total);
        jsonObj3.put("rows", list);

        return jsonObj3;
    }

    public void updateOrder2(Order order) {
        orderMapper.updateOrder2(order);
    }

    public JSONObject queryOrder2(int page, int rows, Order order,int aid) {
        long total = orderMapper.queryCount2(aid);
        int start = (page-1)*rows;
        int end = (start+rows);


        Set<Map<String,Object>> list =new HashSet<Map<String,Object>>();
        list=orderMapper.queryList2(start,end,order,aid);
        JSONObject jsonObj3 = new JSONObject();
        jsonObj3.put("total", total);
        jsonObj3.put("rows", list);

        return jsonObj3;
    }

    public void updateOrder3(Order order) {
        orderMapper.updateOrder3(order);
    }

    public JSONObject queryOrder3(int page, int rows, Order order,int aid) {
        long total = orderMapper.queryCount3(aid);
        int start = (page-1)*rows;
        int end = (start+rows);


        Set<Map<String,Object>> list =new HashSet<Map<String,Object>>();
        list=orderMapper.queryList3(start,end,order,aid);
        JSONObject jsonObj3 = new JSONObject();
        jsonObj3.put("total", total);
        jsonObj3.put("rows", list);

        return jsonObj3;
    }

    public void updateOrder4(Order order) {
        orderMapper.updateOrder4(order);
    }

    public JSONObject queryOrder4(int page, int rows, Order order,int aid) {
        long total = orderMapper.queryCount4(aid);
        int start = (page-1)*rows;
        int end = (start+rows);
        Set<Map<String,Object>> list =new HashSet<Map<String,Object>>();
        list=orderMapper.queryList4(start,end,order,aid);
        JSONObject jsonObj3 = new JSONObject();
        jsonObj3.put("total", total);
        jsonObj3.put("rows", list);
        return jsonObj3;
    }

    public void updateOrder5(Order order) {
        orderMapper.updateOrder5(order);
    }

    public JSONObject queryOrder5(int page, int rows, Order order,int aid) {
        long total = orderMapper.queryCount5(aid);
        int start = (page-1)*rows;
        int end = (start+rows);
        Set<Map<String,Object>> list =new HashSet<Map<String,Object>>();
        list=orderMapper.queryList5(start,end,order,aid);
        JSONObject jsonObj3 = new JSONObject();
        jsonObj3.put("total", total);
        jsonObj3.put("rows", list);
        return jsonObj3;
    }


}
