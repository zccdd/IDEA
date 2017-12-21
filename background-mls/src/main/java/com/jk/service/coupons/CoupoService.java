package com.jk.service.coupons;

import com.jk.model.coupons.Couponsn;

/**
 * Created by k偏执` on 2017/12/18.
 */
public interface CoupoService {

    com.alibaba.fastjson.JSONObject querycoupons(int page, int rows, Couponsn dq);

    void delCoupons(String couponsid);



    Couponsn querdan(Couponsn couponsId);

    void saveCoupons(Couponsn dq);
}
