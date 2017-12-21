package com.jk.controller.comment;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.comment.Comment;
import com.jk.service.comment.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;

/**
 * Created by Administrator on 2017/12/18.
 */
@RequestMapping("commentController")
@Controller
public class CommentController {

    @Autowired
    private CommentService commentService;


    /**
     * 功能描述: 跳转页面
     *@Auther: lsx
     * @param:
     * @return: 
     * @date: 2017/12/18 19:18
     */
    @RequestMapping("tiao")
    public String toTiao(){

        return "/WEB-INF/comment/commentList";
    }
    /**
     * 功能描述: 查询
     *@Auther: lsx
     * @param: 
     * @return: 
     * @date: 2017/12/18 19:18
     */
    @RequestMapping("queryComment")
    @ResponseBody
    public Object queryComment(int page, int rows, Comment comment){

        int aid=1;
        JSONObject menuJson = commentService.queryComment(page,rows,comment,aid);
        return  menuJson;

    }
    /**
     * 功能描述: 删除单个信息
     *@Auther: lsx
     * @param: 
     * @return: 
     * @date: 2017/12/18 22:13
     */

    @RequestMapping("deleteOne")
    @ResponseBody
    public void deleteOne(int id){

        commentService.deleteOne(id);

    }
    /**
     * 功能描述: 批量删除
     *@Auther: lsx
     * @param: 
     * @return: 
     * @date: 2017/12/18 22:45
     */

    @RequestMapping("deleteByid")
    @ResponseBody
    public void deleteByid(String ids){
        System.out.println(ids);
        String[] arr = ids.split(",");
        for (int i = 0; i < arr.length; i++) {
            commentService.deleteByid(arr[i]);
        }

    }
    /**
     * 功能描述: 评论内容回显值内容
     *@Auther: lsx内容
     * @param: 
     * @return: 
     * @date: 2017/12/19 18:39
     */
    @RequestMapping("queryUpdateComment")

    public String queryUpdateComment(int commentid,String commentcont,String uname, String reply, HttpServletRequest request, HttpSession session) throws UnsupportedEncodingException {

         commentService.queryUpdateComment(commentcont);
       /* request.setCharacterEncoding("utf-8");
        Comment comment=new Comment();
        comment.setCommentcont(commentcont);*/
        request.getSession().setAttribute("commentid",commentid);
         request.getSession().setAttribute("commentcont",commentcont);
        request.getSession().setAttribute("uname",uname);
        request.getSession().setAttribute("reply",reply);

       // System.out.println(reply);
         return "/WEB-INF/comment/updateComment";
    }
    /**
     * 功能描述: 回复内容
     *@Auther: lsx
     * @param: 
     * @return: 
     * @date: 2017/12/19 21:20
     */
    @RequestMapping("addComment")
    public void addComment(Comment comment){

        commentService.addComment(comment);


    }
}
