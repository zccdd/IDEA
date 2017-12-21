package com.jk.service.impl.consult;

import com.alibaba.fastjson.JSONObject;
import com.jk.dao.consult.ConsultMapper;
import com.jk.model.consult.Consult;
import com.jk.service.consult.ConsultService;
import com.jk.util.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2017/12/20.
 */
@Service("consultService")
public class ConsultServiceImpl implements ConsultService{

    @Autowired
    private ConsultMapper consultMapper;

    public JSONObject queryConsult(int page, int rows, Consult consult, int aid) {
        //  1.总条数
        long total = consultMapper.queryCount(consult);
//			int start=(page - 1) * rows;
//			int end = start + rows;
        PageUtil<Consult> pageUtil = new PageUtil<Consult>(page, total, rows);

//			2.当前页展示数据
        List<Consult> menus = consultMapper.queryConsult(pageUtil.getStart(),pageUtil.getEnd(),consult,aid);

        JSONObject jsonObj = new JSONObject();
        //！！！！easyui分页时 key的名字要求： 总条数：total    当前页数据：rows
        jsonObj.put("total", total);
        jsonObj.put("rows", menus);
        return jsonObj;
    }

    public void addConsult(Consult consult) {
        consultMapper.addConsult(consult);
    }

    public void updateCon(Consult consult) {
        consultMapper.updateCon(consult);
    }

    public JSONObject queryConsultNo(int page, int rows, Consult consult) {
        //  1.总条数
        long total = consultMapper.queryCount1(consult);
//			int start=(page - 1) * rows;
//			int end = start + rows;
        PageUtil<Consult> pageUtil = new PageUtil<Consult>(page, total, rows);

//			2.当前页展示数据
        List<Consult> menus = consultMapper.queryConsultNo(pageUtil.getStart(),pageUtil.getEnd(),consult);

        JSONObject jsonObj = new JSONObject();
        //！！！！easyui分页时 key的名字要求： 总条数：total    当前页数据：rows
        jsonObj.put("total", total);
        jsonObj.put("rows", menus);
        return jsonObj;
    }

    public JSONObject queryConsultYi(int page, int rows, Consult consult) {
        //  1.总条数
        long total = consultMapper.queryCount2(consult);
//			int start=(page - 1) * rows;
//			int end = start + rows;
        PageUtil<Consult> pageUtil = new PageUtil<Consult>(page, total, rows);

//			2.当前页展示数据
        List<Consult> menus = consultMapper.queryConsultYi(pageUtil.getStart(),pageUtil.getEnd(),consult);

        JSONObject jsonObj = new JSONObject();
        //！！！！easyui分页时 key的名字要求： 总条数：total    当前页数据：rows
        jsonObj.put("total", total);
        jsonObj.put("rows", menus);
        return jsonObj;
    }

    public void deleteByids(String ids) {
        consultMapper.deleteByids(ids);
    }


}
