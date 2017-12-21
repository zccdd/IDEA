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
import java.util.UUID;

/**
 * Created by dell on 2017/12/20.
 */
@Controller
@RequestMapping("addressController")
public class AddressController {

    @Autowired
    private AddressService addressService;

    @Autowired
    private OderService orderService;

    @Autowired
    private ShopService shopService;

    @RequestMapping("toBuy")
    public String toBuy(HttpServletRequest req){//提交订单（未付款）
        Subject subject = SecurityUtils.getSubject();
        User user = (User) subject.getPrincipal();
        int uid=user.getUid();
        //查询收货地址
        List<Address> address=addressService.getAllAddress(uid);
        req.setAttribute("address", address);
        //查询购物车中的商品
        List<Shop> slist = shopService.getShopByUid(uid);
        if (slist.size()>0){
            for (int i = 0; i < slist.size(); i++) {
                Order order =new Order();
                order.setUid(uid);
                order.setAid(slist.get(i).getAid());
                order.setGid(slist.get(i).getGid());
                order.setTotal(slist.get(i).getPrice());
                if(address.size()>0){
                    order.setAddress(address.get(0).getAddress());
                }
                order.setCreatime(new Date());
                order.setStatus("1");//初始状态【待付款】
                order.setOnumber(UUID.randomUUID().toString());
                order.setOcount(slist.get(i).getCounts());
                //新增订单
                orderService.insertOrder(order);
            }
        }
        return "buy";
    }

    @RequestMapping("insertAddress")
    public String insertAddress(HttpServletRequest req,Address address,String address1,String address2){
        //新增收货地址
        Subject subject = SecurityUtils.getSubject();
        User user = (User) subject.getPrincipal();
        int uid=user.getUid();
        address.setUid(uid);
        address.setAddress(address.getAddress()+"省"+address1+"市"+address2);//拼接
        addressService.insertAddress(address);
        return "redirect:/addressController/toBuy.do";
    }

    @RequestMapping("deleteAddress")
    public String deleteAddress(Integer id){
        //删除收货地址
        addressService.deleteAddress(id);
        return "redirect:/addressController/toBuy.do";
    }
}
