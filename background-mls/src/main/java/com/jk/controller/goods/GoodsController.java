package com.jk.controller.goods;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.goods.Goods;
import com.jk.service.goods.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2017/12/18.
 */
@Controller
@RequestMapping("goods")
public class GoodsController {

    @Autowired
    private GoodsService goodsService;

    @RequestMapping("tiao")
    public String tiao(){
        return "WEB-INF\\goods\\addGoods";
    }

    @RequestMapping("tiao2")
    public String tiao2(){
        return "WEB-INF\\goods\\listGoods";
    }

    @RequestMapping("tiao3")
    public String tiao3(){
        return "WEB-INF\\goods\\xiaoGoods";
    }

    @RequestMapping("tiao4")
    public String tiao4(){
        return "WEB-INF\\goods\\shenGoods";
    }

    @RequestMapping("tiao5")
    public String tiao5(){
        return "WEB-INF\\goods\\cangGoods";
    }


    @RequestMapping("upImg")//将对象同过json格式写入到
    public String upImg(Goods goods, @RequestParam MultipartFile artImg, HttpServletRequest req) throws Exception{
        System.out.println(artImg);
        String fileName = artImg.getOriginalFilename();
        System.out.println("第一个："+fileName);//上传原图片的名称
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
        //给他加上一个时间
        String folderPath = req.getSession().getServletContext().getRealPath("/")+"upload/";
        //获取磁盘的路径
        System.out.println("第二个："+folderPath);//存入的绝对路径
        File file = new File(folderPath);
        //根据获取到的磁盘路径  new一个新的文件

        if(!file.exists()){
            file.mkdir();   //判断他这个文件是否存在  不存在的话就创建新的文件夹来存放图片
        }
        String qwe = sdf.format(new Date())+fileName.substring(fileName.lastIndexOf('.'));
        goods.setGimg(fileName);
        goods.setGaid(1);
        goodsService.addGoods(goods);
        FileOutputStream fos = new FileOutputStream(folderPath+fileName);

        fos.write(artImg.getBytes());
        fos.flush();
        fos.close();
        return "WEB-INF\\tree\\index";
    }

    @RequestMapping("queryGoods")
    @ResponseBody
    public Object queryGoods(int rows,int page,Goods gwpost){

        JSONObject menuJson = goodsService.queryDq(page,rows,gwpost);
        return  menuJson;
    }
    @RequestMapping("update1")
    @ResponseBody
    public String update1(Goods goods){
        goodsService.update1(goods);
        return "qwe";
    }
    @RequestMapping("updatebo")
    @ResponseBody
    public String update2(Goods goods){
        goodsService.updatebo(goods);
        return "qq";
    }
    @RequestMapping("updatetong")
    @ResponseBody
    public String updatetong(Goods goods){
        goodsService.updatetong(goods);
        return "qqq";
    }

    @RequestMapping("queryxiaGoods")
    @ResponseBody
    public Object queryxiaGoods(int rows,int page,Goods gwpost){

        JSONObject menuJson = goodsService.queryDq2(page,rows,gwpost);
        return  menuJson;
    }
    @RequestMapping("queryshenGoods")
    @ResponseBody
    public Object queryshenGoods(int rows,int page,Goods gwpost){

        JSONObject menuJson2 = goodsService.queryDq23(page,rows,gwpost);
        return  menuJson2;
    }
    @RequestMapping("querycangGoods")
    @ResponseBody
    public Object querycangGoods(int rows,int page,Goods gwpost){

        JSONObject menuJson3 = goodsService.queryDq232(page,rows,gwpost);
        return  menuJson3;
    }
    @RequestMapping("queryByid")
    public String queryByid(Goods goods,HttpServletRequest request){
        List<Goods> list = goodsService.queryByid(goods);

        System.out.println(list);
        request.setAttribute("list",list);
        return "WEB-INF\\goods\\updateGoods";
    }

}
