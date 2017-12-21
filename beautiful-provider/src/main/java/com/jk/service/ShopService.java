package com.jk.service;

import com.jk.model.Shop;

import java.util.List;
import java.util.Map;

/**
 * Created by dell on 2017/12/19.
 */
public interface ShopService {
    boolean isExists(int uid, Integer spid);

    Map<Integer,Shop> getShop(int uid);

    void addCartItem(Shop shop);

    void updateCartItemCount(Shop shop);

    Shop findCartItemById(int uid, Integer spid);

    void deleteShop(Integer spid);

    void deleteShopByUid(int uid);

    List<Shop> getShopByUid(int uid);
}
