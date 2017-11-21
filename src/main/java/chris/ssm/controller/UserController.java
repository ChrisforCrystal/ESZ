package chris.ssm.controller;

import chris.ssm.model.Result;
import chris.ssm.model.User;
import chris.ssm.service.UserService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Zhangxq on 2016/7/15.
 */

@Controller
public class UserController {

    private Logger log = Logger.getLogger(UserController.class);
    @Resource
    private UserService userService;

    @RequestMapping("/showUser")
    public String showUser(HttpServletRequest request, Model model){
        System.out.println("show user");

        log.info("heiehi");
        List<User> userList = userService.getAllUser();
        model.addAttribute("userList",userList);
        model.addAttribute("nihao","nihao");

        return "/showUser";
    }

    @RequestMapping("/userloginForm")
    @ResponseBody
    public Result showIndex(HttpServletRequest request, Model model, @RequestParam("username") String username, @RequestParam("password") Integer password){
        Result result =new Result();
        result.setCode(1000);
        result.setMsg("登录成功");
        log.info("用户名"+username +"  密码"+password);
        log.info("你好");
        return result;
    }
    @RequestMapping("/indexIn")
    public String finishLog(HttpServletRequest request, Model model){
        log.info("你好,欢迎您！");
        return "index";
    }

}
