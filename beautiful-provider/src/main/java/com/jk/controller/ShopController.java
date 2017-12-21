package com.jk.controller;

import com.jk.model.Goods;
import com.jk.model.Shop;
import com.jk.model.User;
import com.jk.service.GoodService;
import com.jk.service.ShopService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by dell on 2017/12/19.
 */
@Controller
@RequestMapping("shopController")
public class ShopController {

    @Autowired
    private GoodService goodService;

    @Autowired
    private ShopService shopService;

    @RequestMapping("toShopping")
    public String toShopping(Integer spid,HttpServletRequest req){
        //判断入口
        if(spid==null){//商品id为空即从我的购物车入口进入，从缓存中取出回显跳出
            Map<Integer,Shop> cart=(Map<Integer,Shop>)req.getSession().getAttribute("cart");
            return "shopping";
        }
        //商品id不为空说明是通过加入购物车入口进入，拿到商品id
        Goods gd=goodService.queryGoods(spid);
        Subject subject = SecurityUtils.getSubject();
        User user = (User) subject.getPrincipal();
        int uid=user.getUid();
        //从缓存中获得购物车，可能为空，可能不为空
        Map<Integer,Shop> cart=(Map<Integer,Shop>)req.getSession().getAttribute("cart");
        //如果购物车为空，则新建一个;
        if(cart==null){
            cart=new HashMap<Integer,Shop>();//id以及CartItem对象,这样购物车想可以是任意商品
            req.getSession().setAttribute("cart",cart);
        }
        //如果购物车不为空，查询当前商品是否在当前用户的购物车里
        if(shopService.isExists(uid, spid));
        {
            //存在，就以商品id为key购物车信息为value存入map中
            cart=shopService.getShop(uid);
        }
        //取出商品;
        Shop shop=cart.get(spid);
        //如果购物车没有当前商品新建一个，将之前数据库查询返回的对象存进去
        if (shop == null) {
            shop=new Shop();
            shop.setUid(user.getUid());//用户id
            shop.setGid(spid);//商品id
            shop.setPrice(gd.getGprice());
            shop.setName(gd.getGname());
            shop.setCounts(1);// 购买数量初始一个
            shop.setAid(gd.getGaid());//商家id
            shop.setTpname(gd.getGimg());
        } else {
            // 如果商品已存在购物车则数量+1
            if(gd.getGcount()>shop.getCounts()){
                shop.setCounts(shop.getCounts()+1);
            }
        }
        //将新建的或者修改后的商品存入购物车
        cart.put(spid, shop);
        //购物车存入数据库，后期用redis
        shopService.addCartItem(shop);
        //购物车信息存入缓存前台回显
        req.getSession().setAttribute("cart", cart);
        return "shopping";
    }

    @RequestMapping("changeCartCount")
    @ResponseBody
    public void changeCartCount(Integer spid, Integer count, HttpServletRequest req){
        //更改购物车中商品的数量
        Subject subject = SecurityUtils.getSubject();
        User user = (User) subject.getPrincipal();
        int uid=user.getUid();
        Goods good=goodService.queryGoods(spid);
        if(good.getGcount()<count){
            return ;
        }
        Shop shop=shopService.findCartItemById(uid,spid);
        Map<Integer,Shop> cart = (Map<Integer,Shop>)req.getSession().getAttribute("cart");
        if(cart!=null){
            //通过前台传的商品id和数量更改并存入购物车
            shop = cart.get(spid);
            shop.setCounts(count);
            cart.put(spid, shop);
            shopService.updateCartItemCount(shop);
        }
        req.getSession().setAttribute("cart", cart);
    }

    @RequestMapping("deleteShop")
    public String deleteShop(Integer spid, HttpServletRequest req){
        //删除购物车中的商品
        Map<Integer,Shop> cart = (Map<Integer,Shop>) req.getSession().getAttribute("cart");
        cart.remove(spid);
        req.getSession().setAttribute("cart", cart);
        shopService.deleteShop(spid);
        return "shopping";
    }
}
