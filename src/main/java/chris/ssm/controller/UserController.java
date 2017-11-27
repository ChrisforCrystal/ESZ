package chris.ssm.controller;

import chris.ssm.model.Picture;
import chris.ssm.model.Result;
import chris.ssm.model.ShopCar;
import chris.ssm.model.User;
import chris.ssm.service.GalleryService;
import chris.ssm.service.ShopCarService;
import chris.ssm.service.UserService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by Zhangxq on 2016/7/15.
 */

@Controller
public class UserController {

    private Logger log = Logger.getLogger(UserController.class);
    @Resource
    private UserService userService;
    @Resource
    private ShopCarService shopCarService;
    @Resource
    private GalleryService galleryService;


    @RequestMapping("/signUser")
    public String signUser(HttpServletRequest request, Model model,String email,String password,String username){


        return "/showUser";
    }

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
    public Result showIndex(HttpServletRequest request, Model model, @RequestParam("username") String username, @RequestParam("password") String password){
        System.out.println(1111111);
        Result result =new Result();
       // User user = userService.getUserByUP(username, password);
        User user =new User();
        System.out.println("denglu");
        if(user!=null){
            result.setCode(1000);
            result.setMsg("登录成功");
            //匹配购物车
           // fetchShopCar(user.getId());
        }else{
            result.setCode(0);
            result.setMsg("登录失败");
        }

        log.info("用户名"+username +"  密码"+password);
        log.info("你好");


        return result;
    }

    private void fetchShopCar(Long id) {
//        User user=userService.getUserById(id);
        ShopCar shopCar = shopCarService.findByUserId(id);
        boolean istrue=false;
        if(shopCar==null && shopCar.getShopcarid()==0){
            //创建购物车
            istrue=shopCarService.insert(id);
        }
    }


    @RequestMapping("/indexIn")
    public String finishLog(HttpServletRequest request, Model model){
        log.info("你好,欢迎您！");
        return "index";

    }

    @RequestMapping("/userDetail")
    public Result userDetail(HttpServletRequest request, HttpSession session ,Model model){
        User user = (User) session.getAttribute("user");
        Result result =new Result();
        List<Picture> pictureList=null;
        //获取图片
        try {
            pictureList = galleryService.findByUserid(user.getId());
        }catch (Exception e){
            log.info(e.getMessage());
        }


        model.addAttribute("pictureList",pictureList);
        model.addAttribute("user",user);
        return result;
    }
    @RequestMapping("/userpreupdate")
    public String userpreupdate(HttpServletRequest request, HttpSession session ,Model model){
        User user = (User) session.getAttribute("user");

        model.addAttribute("user",user);
        return "editProfile";
    }

    @RequestMapping("/userupdate")
    public String userupdate(HttpServletRequest request, HttpSession session ,Model model,User userToChange){
        User user = (User) session.getAttribute("user");
        userToChange.setId(user.getId());
        try {
            userService.update(userToChange);
        }catch (Exception e){
            log.info("更新失败");
        }

        model.addAttribute("user",user);
        return "userDetail";
    }

    /**
     * 修改密码
     * @param request
     * @param session
     * @param model
     * @return
     */
    @RequestMapping("/userupdatepassword")
    public Result userupdatepassword(HttpServletRequest request, HttpSession session ,Model model,String password){
        User user = (User) session.getAttribute("user");
        Result result =new Result();
       user.setUserPwd(password);
        try {
            userService.update(user);
            result.setCode(1000);
            result.setMsg("修改密码成功");
        }catch (Exception e){
            log.info("修改密码失败");
            result.setCode(100);
        }

        model.addAttribute("user",user);
        return result;
    }
}
