package chris.ssm.controller;

import chris.ssm.model.*;
import chris.ssm.service.GalleryService;
import chris.ssm.service.ShopOder_CarService;
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
import java.util.Date;
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
    private ShopOder_CarService orderCarService;
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

        User user = userService.getUserByUP(username, password);
       // User user =new User();
        //System.out.println("denglu");
        if(user!=null){
            user.setModifyTime(new Date());
            userService.updateUser(user);
            result.setCode(1000);
            result.setMsg("登录成功");

            ShopCar car = orderCarService.selectCarByUserId(user.getId());
            if (car == null){
                ShopCar sc = new ShopCar();
                sc.setUserId(user.getId());
                sc.setUserNick(user.getNick());
                sc.setCreateTime(new Date());
                sc.setModifyTime(new Date());
                orderCarService.registerShopCar(sc);
            }
            request.getSession().setAttribute("user",user);

            //匹配购物车
           // fetchShopCar(user.getId());
        }else{
            result.setCode(0);
            result.setMsg("登录失败");
            result.setData("<font color='red'>用户名或密码错误,请检查后重新输入</font>");
        }

       // log.info("用户名"+username +"  密码"+password);
      //  log.info("你好");


        return result;
    }

    @RequestMapping("/userregisterForm")
    @ResponseBody
    public Result register(HttpServletRequest request, Model model, @RequestParam("new_username") String username,
                           @RequestParam("new_password") String password,@RequestParam("new_Email") String email,
                           @RequestParam("new_phone") String phone,@RequestParam("new_nick") String nickname){
        System.out.println(22222);

        User user =new User();
        user.setUserName(username);
        user.setUserPwd(password);
        user.setUserEmail(email);
        user.setCreateTime(new Date());
        user.setModifyTime(new Date());
        user.setUserPhone(phone);
        user.setNick(nickname);

        userService.registerUser(user);


        return null;
    }


    @RequestMapping("/register2username")
    @ResponseBody
    public Result register2username(HttpServletRequest request, Model model,@RequestParam("new_username") String username){


        User user = userService.selectUserByUserName(username);

        Result result =new Result();
        if(user == null){
            result.setCode(1000);
            result.setMsg("可以使用");
            result.setData("<font color='green'>恭喜您,该用户名可以使用</font>");
            //匹配购物车
            // fetchShopCar(user.getId());
        }else{
            result.setCode(0);
            result.setMsg("不能");
            result.setData("<font color='red'>该用户名已存在,请更换用户名</font>");
        }

        return result;

    }

    @RequestMapping("/register2email")
    @ResponseBody
    public Result register2email(HttpServletRequest request, Model model,@RequestParam("new_Email") String email){


        User user = userService.selectUserByUserEmail(email);

        Result result =new Result();
        if(user == null){
            result.setCode(1000);
            result.setMsg("可以使用");
            result.setData("<font color='green'>恭喜您,该邮箱可以使用</font>");
            //匹配购物车
            // fetchShopCar(user.getId());
        }else{
            result.setCode(0);
            result.setMsg("不能");
            result.setData("<font color='red'>该邮箱已经被注册,请更换注册邮箱.</font>");
        }

        return result;

    }



    @RequestMapping("/register2phone")
    @ResponseBody
    public Result register2phone(HttpServletRequest request, Model model,@RequestParam("new_phone") String phone){


        User user = userService.selectUserByPhone(phone);
        System.out.println(phone);
        Result result =new Result();
        if(user == null){
            result.setCode(1000);

            result.setData("<font color='green'>恭喜您,该手机号可以使用</font>");

        }else{
            result.setCode(0);

            result.setData("<font color='red'>该手机号已经被占用,请重新输入</font>");
        }

        return result;

    }

    @RequestMapping("/register2nickname")
    @ResponseBody
    public Result register2nickname(HttpServletRequest request, Model model,@RequestParam("new_nick") String nick){


        User user = userService.selectUserByNick(nick);
        System.out.println(nick);
        Result result =new Result();
        if(user == null){
            result.setCode(1000);
            result.setMsg("可以使用");
            result.setData("<font color='green'>恭喜您,该昵称可以使用</font>");
            //匹配购物车
            // fetchShopCar(user.getId());
        }else{
            result.setCode(0);
            result.setMsg("不能");
            result.setData("<font color='red'>该昵称已经被占用,请重新输入</font>");
        }

        return result;

    }


    @RequestMapping("/updateUser")
    @ResponseBody
    public Result updateUser(HttpServletRequest request, Model model, @RequestParam("update_address") String address ,
                             @RequestParam("updata_age") String  age, @RequestParam("comment") String comment,@RequestParam("email") String email){
        System.out.println(22222);
        Result result =new Result();
        User user = userService.selectUserByUserEmail(email);
        user.setModifyTime(new Date());
        user.setAddress(address);
        user.setAge(age);
        user.setIntroduceSelf(comment);

        userService.updateUser(user);
        request.getSession().setAttribute("user",user);

       result.setCode(1000);


        return result;
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
