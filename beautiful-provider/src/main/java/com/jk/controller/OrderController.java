package com.jk.controller;

import com.jk.model.Address;
import com.jk.model.Order;
import com.jk.model.Shop;
import com.jk.model.User;
import com.jk.service.AddressService;
import com.jk.service.OderService;
import com.jk.service.ShopService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;

/**
 * Created by dell on 2017/12/20.
 */
@Controller
@RequestMapping("orderController")
public class OrderController {

    @Autowired
    private OderService orderService;

    @Autowired
    private ShopService shopService;

    @RequestMapping("toBuyyes")
    public String toBuyyes(HttpServletRequest req){//付款
        Subject subject = SecurityUtils.getSubject();
        User user = (User) subject.getPrincipal();
        int uid=user.getUid();
        orderService.updateOrderByUid(uid);//更改订单状态【已付款】
        shopService.deleteShopByUid(uid);//删除数据库购物车
        req.getSession().removeAttribute("cart");//清空缓存购物车
        List<Order> orderss=orderService.queryOrder(uid);
        req.getSession().setAttribute("orderss", orderss);//回显订单
        return "buyyes";
    }

    @RequestMapping("toDD")
    public String toDD(HttpServletRequest req){
        //查看订单
        Subject subject = SecurityUtils.getSubject();
        User user = (User) subject.getPrincipal();
        int uid=user.getUid();
        List<Order> orderss=orderService.queryOrder(uid);
        req.getSession().setAttribute("orderss", orderss);//回显订单
        return "dingdan";
    }
}
