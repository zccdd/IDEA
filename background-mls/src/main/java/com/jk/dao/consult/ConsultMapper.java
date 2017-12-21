package com.jk.dao.consult;

import com.jk.model.consult.Consult;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ConsultMapper {
    int deleteByPrimaryKey(Integer consultid);

    int insert(Consult record);

    int insertSelective(Consult record);

    Consult selectByPrimaryKey(Integer consultid);

    int updateByPrimaryKeySelective(Consult record);

    int updateByPrimaryKey(Consult record);

    long queryCount(Consult consult);

    List<Consult> queryConsult(@Param("start") int start, @Param("end") int end, @Param("consult") Consult consult, @Param("aid") int aid);

    void addConsult(Consult consult);

    void updateCon(Consult consult);

    long queryCount1(Consult consult);

    List<Consult> queryConsultNo(@Param("start") int start, @Param("end") int end, @Param("consult") Consult consult);

    long queryCount2(Consult consult);

    List<Consult> queryConsultYi(@Param("start") int start, @Param("end") int end, @Param("consult") Consult consult);

    void deleteByids(String ids);
}