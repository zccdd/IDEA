package com.jk.controller.order;



import com.alibaba.fastjson.JSONObject;
import java.math.BigDecimal;
import com.jk.model.order.Order;
import com.jk.model.user.ActiveUser;
import com.jk.service.order.OrderService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * @Date: 2017/12/18 17:00
 */
@RequestMapping("orderController")
@Controller
public class OrderController {
    @Autowired
    private OrderService orderService;
    private int aid=1;
    /**
     * 功能描述: 跳转查看订单页面
     *@Auther: 田国良
     * @param:
     * @return: 
     * @date: 2017/12/18 17:25
     */
    @RequestMapping("showOrder")
    public String showOrder(){

        return "/WEB-INF/order/showOrder";
    }

    /**
     * 功能描述: 订单分页查询
     *@Auther: 田国良
     * @param:
     * @return: 
     * @date: 2017/12/18 20:41
     */
    @RequestMapping("queryOrder")
    @ResponseBody
    public Object queryOrder(int page,int rows,Order order){
        Subject subject = SecurityUtils.getSubject();
        ActiveUser activeUser = (ActiveUser) subject.getPrincipal();
        JSONObject orderList=orderService.queryOrder(page,rows,order,activeUser.getUserid());
        return orderList;
    }
    /**
     * 功能描述: 跳转费用调整页面
     *@Auther: 田国良
     * @param:
     * @return: 
     * @date: 2017/12/19 16:25
     */
    @RequestMapping("upOrder")
    public String upOrder(int oid,BigDecimal total,String uphone,HttpServletRequest request){
        request.getSession().setAttribute("oid", oid);
        request.getSession().setAttribute("total", total);
        request.getSession().setAttribute("uphone", uphone);
        return "/WEB-INF/order/upOrder";
    }
    @RequestMapping("updateOrder2")
    @ResponseBody
    public  String  updateOrder2(Order order){

        orderService.updateOrder2(order);
        return "sucess";
    }
    /**
     * 功能描述: 跳转待发货页面
     *@Auther: 田国良
     * @param: 
     * @return: 
     * @date: 2017/12/19 21:09
     */
    
    @RequestMapping("showOrder2")
    public String showOrder2(){

        return "/WEB-INF/order/showOrder1";
    }

    /**
     * 功能描述: 查询待发货数据
     *@Auther: 田国良
     * @param:
     * @return: 
     * @date: 2017/12/19 21:29
     */
    @RequestMapping("queryOrder2")
    @ResponseBody
    public Object queryOrder2(int page,int rows,Order order){
        //获取shiro中存储用户信息
        Subject subject = SecurityUtils.getSubject();
        ActiveUser activeUser = (ActiveUser) subject.getPrincipal();
        JSONObject orderList=orderService.queryOrder2(page,rows,order,activeUser.getUserid());
        return orderList;
    }

    @RequestMapping("updateOrder3")
    @ResponseBody
    public  String  updateOrder3(Order order){

        orderService.updateOrder3(order);
        return "sucess2";
    }

    /**
     * 功能描述: 跳转待收货页面
     *@Auther: 田国良
     * @param:
     * @return: 
     * @date: 2017/12/19 21:45
     */
    @RequestMapping("showOrder3")
    public String showOrder3(){

        return "/WEB-INF/order/showOrder2";
    }

    /**
     * 功能描述: 查询待收货数据
     *@Auther: 田国良
     * @param: 
     * @return: 
     * @date: 2017/12/19 21:46
     */
    @RequestMapping("queryOrder3")
    @ResponseBody
    public Object queryOrder3(int page,int rows,Order order){
        //获取shiro中存储用户信息
        Subject subject = SecurityUtils.getSubject();
        ActiveUser activeUser = (ActiveUser) subject.getPrincipal();
        JSONObject orderList=orderService.queryOrder3(page,rows,order,activeUser.getUserid());
        return orderList;
    }


    @RequestMapping("updateOrder4")
    @ResponseBody
    public  String  updateOrder4(Order order){

        orderService.updateOrder4(order);
        return "sucess3";
    }

    /**
     * 功能描述: 跳转待评价页面
     *@Auther: 田国良
     * @param: 
     * @return: 
     * @date: 2017/12/19 22:11
     */
    @RequestMapping("showOrder4")
    public String showOrder4(){

        return "/WEB-INF/order/showOrder3";
    }

    /**
     * 功能描述: 待评价数据查询
     *@Auther: 田国良
     * @param: 
     * @return: 
     * @date: 2017/12/19 22:09
     */
    @RequestMapping("queryOrder4")
    @ResponseBody
    public Object queryOrder4(int page,int rows,Order order){
        //获取shiro中存储用户信息
        Subject subject = SecurityUtils.getSubject();
        ActiveUser activeUser = (ActiveUser) subject.getPrincipal();
        JSONObject orderList=orderService.queryOrder4(page,rows,order,activeUser.getUserid());
        return orderList;
    }

    @RequestMapping("updateOrder5")
    @ResponseBody
    public  String  updateOrder5(Order order){

        orderService.updateOrder5(order);
        return "sucess4";
    }

    /**
     * 功能描述: 跳转交易完成页面
     *@Auther: 田国良
     * @param:
     * @return: 
     * @date: 2017/12/19 22:45
     */
    @RequestMapping("showOrder5")
    public String showOrder5(){

        return "/WEB-INF/order/showOrder4";
    }
    
    /**
     * 功能描述: 交易完成数据
     *@Auther: 田国良
     * @param:
     * @return: 
     * @date: 2017/12/19 22:47
     */
    @RequestMapping("queryOrder5")
    @ResponseBody
    public Object queryOrder5(int page,int rows,Order order){
        //获取shiro中存储用户信息
        Subject subject = SecurityUtils.getSubject();
        ActiveUser activeUser = (ActiveUser) subject.getPrincipal();
        JSONObject orderList=orderService.queryOrder5(page,rows,order,activeUser.getUserid());
        return orderList;
    }

    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }
}
