package com.jk.dao.shop;

import com.jk.model.shop.Shop;
import com.jk.model.shop.ShopKey;

public interface ShopMapper {
    int deleteByPrimaryKey(ShopKey key);

    int insert(Shop record);

    int insertSelective(Shop record);

    Shop selectByPrimaryKey(ShopKey key);

    int updateByPrimaryKeySelective(Shop record);

    int updateByPrimaryKey(Shop record);
}