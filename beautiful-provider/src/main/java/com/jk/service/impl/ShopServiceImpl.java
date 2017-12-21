package com.jk.service.impl;

import com.jk.dao.ShopMapper;
import com.jk.model.Shop;
import com.jk.service.ShopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by dell on 2017/12/19.
 */
@Service("shopService")
public class ShopServiceImpl implements ShopService {

    @Autowired
    private ShopMapper shopMapper;

    @Override
    public boolean isExists(int uid, Integer spid) {
        Shop shop = shopMapper.isExists(uid, spid);
        if (shop!=null){
            return true;
        }
        return false;
    }

    @Override
    public Map<Integer, Shop> getShop(int uid) {
        List<Shop> list = shopMapper.getShop(uid);
        Map<Integer, Shop> map = new HashMap<Integer, Shop>();
        for (Shop shop:list){
            Integer gid = shop.getGid();
            map.put(gid,shop);
        }
        return map;
    }

    @Override
    public void addCartItem(Shop shop) {
        if(isExists(shop.getUid(),shop.getGid())){
            shopMapper.updateCartItemCount(shop);
        }else{
            shopMapper.addShoppingItem(shop);
        }
    }

    @Override
    public void updateCartItemCount(Shop shop) {
        shopMapper.updateCartItemCount(shop);
    }

    @Override
    public Shop findCartItemById(int uid, Integer spid) {
        return shopMapper.isExists(uid, spid);
    }

    @Override
    public void deleteShop(Integer spid) {
        shopMapper.deleteByPrimaryKey(spid);
    }

    @Override
    public void deleteShopByUid(int uid) {
        shopMapper.deleteShopByUid(uid);
    }

    @Override
    public List<Shop> getShopByUid(int uid) {
        return shopMapper.getShop(uid);
    }
}
