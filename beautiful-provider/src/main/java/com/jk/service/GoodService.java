package com.jk.service;

import com.jk.model.Goods;
import com.jk.model.Param;

import java.util.List;

/**
 * Created by dell on 2017/12/18.
 */
public interface GoodService {

    List<Goods> query1();
    List<Goods> query2();
    List<Goods> query3();
    List<Goods> query4();
    List<Goods> query5();

    Goods queryGoods(Integer id);

    List<Param> getAllchima(String key);
}
