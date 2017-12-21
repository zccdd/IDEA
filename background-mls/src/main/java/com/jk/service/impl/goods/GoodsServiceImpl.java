package com.jk.service.impl.goods;

import com.alibaba.fastjson.JSONObject;
import com.jk.dao.goods.GoodsMapper;
import com.jk.model.goods.Goods;
import com.jk.service.goods.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2017/12/18.
 */
@Service
public class GoodsServiceImpl implements GoodsService{
    @Autowired
    private GoodsMapper goodsMapper;

    public void addGoods(Goods goods) {
        goodsMapper.addGoods(goods);
    }

    public JSONObject queryDq(int page, int rows, Goods gwpost) {

        long total = goodsMapper.queryTeaCount();
        int start=(page - 1) * rows;
        int end = start + rows;
        //	PageUtil<leibiao> pageUtil = new PageUtil<leibiao>(page, total, rows);

//			2.当前页展示数据
        List<Goods> menus = goodsMapper.teaPageListTest(start,end);

        JSONObject jsonObj = new JSONObject();
        //！！！！easyui分页时 key的名字要求： 总条数：total    当前页数据：rows
        jsonObj.put("total", total);
        jsonObj.put("rows", menus);
        return jsonObj;
    }

    public void update1(Goods goods) {
        goodsMapper.update1(goods);
    }

    public JSONObject queryDq2(int page, int rows, Goods gwpost) {
        long total = goodsMapper.queryTeaCount2();
        int start=(page - 1) * rows;
        int end = start + rows;
        //	PageUtil<leibiao> pageUtil = new PageUtil<leibiao>(page, total, rows);

//			2.当前页展示数据
        List<Goods> menus = goodsMapper.teaPageListTest2(start,end);

        JSONObject jsonObj = new JSONObject();
        //！！！！easyui分页时 key的名字要求： 总条数：total    当前页数据：rows
        jsonObj.put("total", total);
        jsonObj.put("rows", menus);
        return jsonObj;
    }

    public JSONObject queryDq23(int page, int rows, Goods gwpost) {
        long total = goodsMapper.queryTeaCount22();
        int start=(page - 1) * rows;
        int end = start + rows;
        //	PageUtil<leibiao> pageUtil = new PageUtil<leibiao>(page, total, rows);

//			2.当前页展示数据
        List<Goods> menus = goodsMapper.teaPageListTest22(start,end);

        JSONObject jsonObj = new JSONObject();
        //！！！！easyui分页时 key的名字要求： 总条数：total    当前页数据：rows
        jsonObj.put("total", total);
        jsonObj.put("rows", menus);
        return jsonObj;
    }

    public void updatebo(Goods goods) {
        goodsMapper.updatebo(goods);
    }

    public JSONObject queryDq232(int page, int rows, Goods gwpost) {
        long total = goodsMapper.queryTeaCount221();
        int start=(page - 1) * rows;
        int end = start + rows;
        //	PageUtil<leibiao> pageUtil = new PageUtil<leibiao>(page, total, rows);

//			2.当前页展示数据
        List<Goods> menus = goodsMapper.teaPageListTest221(start,end);

        JSONObject jsonObj = new JSONObject();
        //！！！！easyui分页时 key的名字要求： 总条数：total    当前页数据：rows
        jsonObj.put("total", total);
        jsonObj.put("rows", menus);
        return jsonObj;
    }

    public void updatetong(Goods goods) {
        goodsMapper.updatetong(goods);
    }

    public List<Goods> queryByid(Goods goods) {
        List<Goods> list = goodsMapper.queryByid(goods);
        return list;
    }


}
