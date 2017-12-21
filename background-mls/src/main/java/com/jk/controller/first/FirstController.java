package com.jk.controller.first;

import com.jk.model.user.ActiveUser;
import com.jk.model.user.User;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by yangzhichao on 2017-12-18.
 */
@Controller
@RequestMapping("/firstController")
public class FirstController extends BaseController {
    //系统首页
    @RequestMapping("/first")
    public String first(Model model)throws Exception{

        //从shiro的session中取activeUser
        Subject subject = SecurityUtils.getSubject();
        //取身份信息、
        ActiveUser activeUser = (ActiveUser) subject.getPrincipal();
        //通过model传到页面
        model.addAttribute("activeUser", activeUser);
        return "WEB-INF\\tree\\index";
    }
}
