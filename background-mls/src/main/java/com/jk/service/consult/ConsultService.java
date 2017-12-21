package com.jk.service.consult;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.consult.Consult;

/**
 * Created by Administrator on 2017/12/20.
 */
public interface ConsultService {
    JSONObject queryConsult(int page, int rows, Consult consult, int aid);

    void addConsult(Consult consult);


    void updateCon(Consult consult);

    JSONObject queryConsultNo(int page, int rows, Consult consult);

    JSONObject queryConsultYi(int page, int rows, Consult consult);

    void deleteByids(String ids);
}
