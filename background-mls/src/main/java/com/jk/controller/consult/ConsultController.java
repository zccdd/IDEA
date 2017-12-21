package com.jk.controller.consult;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.consult.Consult;
import com.jk.service.consult.ConsultService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;

/**
 * Created by Administrator on 2017/12/20.
 */
@RequestMapping("consult")
@Controller
public class ConsultController {

    @Autowired
    private ConsultService consultService;

    @RequestMapping("tiao")
    public String tiao(){

        return "WEB-INF/consult/consult";
    }
    //跳转到全部咨询
    @RequestMapping("tiao1")
    public String tiao1(){

        return "WEB-INF/consult/demo1";
    }
    //跳转未回复咨询
    @RequestMapping("tiao2")
    public String tiao2(){

        return "WEB-INF/consult/demo2";
    }
    //跳转已回复咨询
    @RequestMapping("tiao3")
    public String tiao3(){
        return "WEB-INF/consult/demo3";
    }




    /**
     * 功能描述: 查询全部咨询
     *@Auther: lsx
     * @param:
     * @return:
     * @date: 2017/12/20 16:30
     */

    @RequestMapping("queryConsult")
    @ResponseBody
    public Object queryConsult(int page, int rows, Consult consult){

        int aid=1;
        JSONObject menuJson = consultService.queryConsult(page,rows,consult,aid);
        return  menuJson;

    }
    /**
     * 功能描述: 回显id
     *@Auther: lsx
     * @param: 
     * @return: 
     * @date: 2017/12/20 17:24
     */
    @RequestMapping("queryUpdateConsult")

    public String queryUpdateConsult(int consultid,String uname, String consult2,String aname,  HttpServletRequest request, HttpSession session) throws UnsupportedEncodingException {

        request.getSession().setAttribute("consultid",consultid);
        request.getSession().setAttribute("uname",uname);
        request.getSession().setAttribute("aname",aname);
        request.getSession().setAttribute("consult2",consult2);
        System.out.println(consult2+"______________-------------");
        return "/WEB-INF/consult/demo1add";
    }
    /**
     * 功能描述:点击咨询
     *@Auther: lsx
     * @param:
     * @return:
     * @date: 2017/12/20 17:01
     */

    @RequestMapping("addConsult")
    public void addConsult(Consult consult){

        consultService.addConsult(consult);
        
    }
    /**
     * 功能描述: 修改状态
     *@Auther: lsx
     * @param:
     * @return: 
     * @date: 2017/12/20 19:21
     */

    public String updateCon(Consult consult){

        consultService.updateCon(consult);
        return "1";
    }
    
    /**
     * 功能描述: 查询未回复咨询
     *@Auther: lsx
     * @param:
     * @return: 
     * @date: 2017/12/20 19:59
     */
    @RequestMapping("queryConsultNo")
    @ResponseBody
    public Object queryConsultNo(int page, int rows, Consult consult){


        JSONObject menuJson = consultService.queryConsultNo(page,rows,consult);
        return  menuJson;

    }
    /**
     * 功能描述: 已回复状态
     *@Auther: lsx
     * @param: 
     * @return: 
     * @date: 2017/12/20 20:08
     */
    @RequestMapping("queryConsultYi")
    @ResponseBody
    public Object queryConsultYi(int page, int rows, Consult consult){


        JSONObject menuJson = consultService.queryConsultYi(page,rows,consult);
        return  menuJson;

    }
    /**
     * 功能描述: 批量删除
     *@Auther: lsx
     * @param: 
     * @return: 
     * @date: 2017/12/20 20:14
     */
    @RequestMapping("deleteByids")
    @ResponseBody
    public void deleteByids(String ids){
        System.out.println(ids);
        String[] arr = ids.split(",");
        for (int i = 0; i < arr.length; i++) {
            consultService.deleteByids(arr[i]);
        }

    }
}
