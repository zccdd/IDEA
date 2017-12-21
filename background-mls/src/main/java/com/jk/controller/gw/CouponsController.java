package com.jk.controller.gw;




import com.alibaba.fastjson.JSONObject;
import com.jk.model.coupons.Couponsn;
import com.jk.service.coupons.CoupoService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.UUID;

/**
 * Created by k偏执` on 2017/12/18.
 */
@RequestMapping("/Coupons")
@Controller
public class CouponsController {

    @Autowired
    private CoupoService coupoService;

    //页面跳转
    @RequestMapping("queryCoco")
    public String queryCoco(){

        return "WEB-INF/gw/queryCoupons";
    }


    //分页查询数据
    @RequestMapping("querycoupons")
    @ResponseBody //将返回的数据 以json的格式返回
    public Object querycoupons(int page,int rows,Couponsn dq){
        System.out.println(page+","+rows);
        JSONObject menuJson = coupoService.querycoupons(page,rows,dq);

        System.out.println(menuJson);
        return  menuJson;

    }
    //批量删除
    @RequestMapping("delCoupons")
    @ResponseBody
    public String  delCoupons(String couponsid){
        System.out.println(couponsid);
        coupoService.delCoupons(couponsid);

        return "1";
    }
    //单条数据查询
    @RequestMapping("querdan")
    public String querdan(Couponsn couponsId,HttpServletRequest request) {
        Couponsn list=coupoService.querdan(couponsId);
        request.setAttribute("list",list);

        return "WEB-INF/gw/xiangxi";
    }

    @RequestMapping("zhuanzeng")
    public  String zhuanzeng(){

    return "WEB-INF/gw/zeng";
    }

    //新增
    @RequestMapping("saveCoupons")
    @ResponseBody
    public String saveCoupons(Couponsn dq){

        System.out.println(dq);

//        int a =dq.getCouponsId();
//                String b=dq.getCouponsName();
//                String c=dq.getCouponsLmg();

        coupoService.saveCoupons(dq);
        return "1";

    }

}
