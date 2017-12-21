package com.jk.service.impl;

import com.jk.dao.GoodsMapper;
import com.jk.dao.ParamMapper;
import com.jk.model.Goods;
import com.jk.model.Param;
import com.jk.service.GoodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("goodService")
public class GoodServiceImpl implements GoodService{

	@Autowired
	private GoodsMapper goodsMapper;

	@Autowired
	private ParamMapper paramMapper;

	public List<Goods> query1(){
		return goodsMapper.query1();
	}
	public List<Goods> query2(){
		return goodsMapper.query2();
	}
	public List<Goods> query3(){
		return goodsMapper.query3();
	}
	public List<Goods> query4(){
		return goodsMapper.query4();
	}
	public List<Goods> query5(){
		return goodsMapper.query5();
	}

	@Override
	public Goods queryGoods(Integer id) {
		return goodsMapper.queryGoods(id);
	}

	@Override
	public List<Param> getAllchima(String key) {
		return paramMapper.getAllchima(key);
	}

}
