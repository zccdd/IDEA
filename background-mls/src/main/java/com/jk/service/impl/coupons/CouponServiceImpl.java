package com.jk.service.impl.coupons;

import com.alibaba.fastjson.JSONObject;
import com.jk.dao.coupons.CouposMapper;
import com.jk.model.coupons.Couponsn;
import com.jk.service.coupons.CoupoService;
import com.jk.util.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by k偏执` on 2017/12/18.
 */
@Service
public class CouponServiceImpl  implements CoupoService {
    @Autowired
    private CouposMapper couposMapper;

    //分页数据查看
    public JSONObject querycoupons(int page, int rows, Couponsn dq) {

//		1.总条数
            long total = couposMapper.queryCount(dq);
//		int start=(page - 1) * rows;
//		int end = start + rows;
            PageUtil<Couponsn> pageUtil = new PageUtil<Couponsn>(page, total, rows);

//		2.当前页展示数据
            List<Couponsn> menus = couposMapper.queryCoupos(pageUtil.getStart(),pageUtil.getEnd(),dq);

            JSONObject jsonObj = new JSONObject();
            //！！！！easyui分页时 key的名字要求： 总条数：total    当前页数据：rows
            jsonObj.put("total", total);
            jsonObj.put("rows", menus);
            return jsonObj;
        }
    //新增
    public void saveCoupons(Couponsn dq) {
        System.out.println("sad");
        couposMapper.saveCoupons(dq);
        System.out.println("sad");
    }
        //批量删除
        public void delCoupons(String couponsid) {
            String [] arr = couponsid.split(",");
            couposMapper.delCoupons(arr);

        }

    public Couponsn querdan(Couponsn couponsId) {
        return couposMapper.querdan(couponsId);
    }


}
