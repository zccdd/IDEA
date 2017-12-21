package com.jk.service.goods;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.goods.Goods;

import java.util.List;

/**
 * Created by Administrator on 2017/12/18.
 */
public interface GoodsService {

    void addGoods(Goods goods);


    JSONObject queryDq(int page, int rows, Goods gwpost);

    void update1(Goods goods);

    JSONObject queryDq2(int page, int rows, Goods gwpost);

    JSONObject queryDq23(int page, int rows, Goods gwpost);

    void updatebo(Goods goods);

    JSONObject queryDq232(int page, int rows, Goods gwpost);

    void updatetong(Goods goods);

    List<Goods> queryByid(Goods goods);
}
