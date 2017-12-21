package com.jk.controller;

import com.jk.model.Goods;
import com.jk.model.Param;
import com.jk.service.GoodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 * Created by dell on 2017/12/18.
 */
@Controller
@RequestMapping("goodController")
public class GoodController {

    @Autowired
    private GoodService goodService;

    @RequestMapping("toHome")
    public String toHome(HttpServletRequest req){
        //查询所有商品返回首页
        List<Goods>goods1=goodService.query1();//标题栏
        List<Goods>goods2=goodService.query2();//流行栏
        List<Goods>goods3=goodService.query3();//新品栏
        List<Goods>goods4=goodService.query4();//明星栏
        List<Goods>goods5=goodService.query5();//精选栏
        req.setAttribute("goods1", goods1);
        req.setAttribute("goods2", goods2);
        req.setAttribute("goods3", goods3);
        req.setAttribute("goods4", goods4);
        req.setAttribute("goods5", goods5);
        return "home";
    }

    @RequestMapping("toGoods")
    public String toGoods(Integer id,HttpServletRequest req){
        //点击进入商品详情
        Goods good=goodService.queryGoods(id);
        List <Param> slist=goodService.getAllchima("size");//尺码
        List <Param> clist=goodService.getAllchima("color");//颜色
        List <Param> mlist=goodService.getAllchima("material");//材质
        req.setAttribute("good",good);
        req.setAttribute("slist", slist);
        req.setAttribute("clist", clist);
        req.setAttribute("mlist", mlist);
        return "goods";
    }
}
