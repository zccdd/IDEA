package com.jk.dao;

import com.jk.model.Shop;
import com.jk.model.ShopKey;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface ShopMapper {
    int deleteByPrimaryKey(Integer spid);

    int insertSelective(Shop record);

    Shop selectByPrimaryKey(ShopKey key);

    int updateByPrimaryKeySelective(Shop record);

    Shop isExists(@Param("uid") int uid, @Param("spid") Integer spid);

    List<Shop> getShop(int uid);

    void updateCartItemCount(@Param("shop") Shop shop);

    void addShoppingItem(@Param("shop") Shop shop);

    void deleteShopByUid(int uid);
}