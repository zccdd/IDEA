package com.jk.dao.coupons;

import com.jk.model.coupons.Couponsn;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * Created by k偏执` on 2017/12/18.
 */
public interface CouposMapper {

    long queryCount(@Param("dq") Couponsn dq);

    List<Couponsn> queryCoupos(@Param("start") int start, @Param("end") int end, @Param("dq") Couponsn dq);

    void delCoupons(String[] arr);


    Couponsn querdan(Couponsn couponsId);

    void saveCoupons(@Param(value = "dq") Couponsn dq);
}
