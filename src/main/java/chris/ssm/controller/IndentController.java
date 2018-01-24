package chris.ssm.controller;

import chris.ssm.model.*;
import chris.ssm.service.*;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;

/**
 * Created by Chris on 2017/11/21
 */
@Controller
public class IndentController {
    @Resource
    private UserService userService;
    @Resource
    private ShopOder_CarService orderCarService;
    @Resource
    private GoodsListService goodsService;
    @Resource
    private IndentService indentService;
   /* @Resource
    private GoodsListService shopService ;
    @Resource
    private OrderService orderService;
    @Resource
    private OrderHelperService orderHelperService;


    private Logger log = Logger.getLogger(OrderController.class);
    //数据添加至购物车
    @RequestMapping("/insertOrder")
    @ResponseBody
    public String insertOrder(HttpServletRequest request, Model model, @RequestParam("userid") Long userid,
                           @RequestParam("ordernum") int ordernum ,@RequestParam("type") Long typeid,@RequestParam("orderName")String orderName){
        Result result =new Result();
        Orderlist orderlist = new Orderlist();
        orderlist.setNum(ordernum);
        orderlist.setOrderName(orderName);
        orderlist.setState(0);
        orderlist.setUserid(userid);
        orderlist.setTypeid(typeid);

        boolean a=orderService.insert(orderlist);
        if(a){
            result.setMsg("插入成功");
            result.setCode(1000);
        }else{
            result.setMsg("插入失败");
            result.setCode(10);
        }
        log.info(request.toString());
        return "/showUser";
    }

    //购物车展示

    @RequestMapping("/shopCarShow")
    public String shopCarShow(HttpServletRequest request, Model model ,@RequestParam("userid")Long userid){
        //根据userid 找到所有的订单 0代表未完成支付的订单

        List<Orderlist> orderlist = orderService.findbyUserid(userid,0);

        model.addAttribute("orderlist",orderlist);
        return "shopCar";
    }

    @RequestMapping("/delCarshow")
    @ResponseBody
    public Result delCarshow(HttpServletRequest request, Model model ,@RequestParam("orderid")Long orderid){
        //根据userid 找到所有的订单 0代表未完成支付的订单
        Result result =new Result();
        boolean  a= orderService.deleByid(orderid);
        if(a){
            result.setMsg("删除成功");
            result.setCode(1000);
        }else{
            result.setMsg("删除失败");
            result.setCode(10);
        }
        log.info(request.toString());
        return result;
    }

    //合并订单
    @RequestMapping("/meargeOrder")
    @ResponseBody
    public  String meargeOrder(HttpSession session, Model model , @RequestParam("orderid")List<String> ids,
                               @RequestParam("sumMoney")double sumMoney){
        Result result =new Result();
        Orderlist orderlist=null;
         long idss=0;
         String orderNum=null;
        orderNum=System.currentTimeMillis()+"";
        //根据userid 找到所有的订单 0代表未完成支付的订单
        if(!ids.isEmpty()&& ids.size()>0){
            for(String id : ids){
                try {
                    idss=Long.parseLong(id);
                }catch (Exception e){
                    log.info("转换出现错误");
                    continue;
                }
                orderlist=orderService.findByid(idss);
                //设置订单编号

                orderlist.setOrdernum(orderNum);
                orderlist.setState(1);
                orderService.update(orderlist);
            }
        }
        //生成新表用作数据查询
        OrderHelper orderHelper = new OrderHelper();
        User user= (User) session.getAttribute("user");
        orderHelper.setUserid(user.getId());
        orderHelper.setOrdernum(orderNum);
        orderHelper.setMoney(sumMoney);
        try {
            orderHelperService.insert(orderHelper);
        }catch (Exception e){
            log.info("orderHelperService 数据更新失败");
        }

        return   "redirect: shopCarShow";
    }

    //根据名称文具搜索
    @RequestMapping("/searchByParams")
    @ResponseBody
    public  String searchByParams(HttpServletRequest request, Model model ,@RequestParam("goodsName")String name,
                                  @RequestParam("goodstype")Long  type  ){
        HashMap hashMap =new HashMap();
        hashMap.put("goodsName",name);
        hashMap.put("goodstype",type);
        try{
            Orderlist orderlist = orderService.searchByParams(hashMap);
        }catch (Exception e){
            log.info(e.getMessage());
        }

        model.addAttribute("orderService",orderService);
        model.addAttribute("goodsName",name);
        model.addAttribute("goodstype",type);
        return "redirect: shopCarShow";

    }*/


    @RequestMapping("/orderList")

    public String listIndent(HttpServletRequest request, Model model) {


        String indenNum = request.getParameter("indennum");
        String month = request.getParameter("month");
//        String state = request.getParameter("statenum");
//
//
//        if (state == null) {
//            state = "2";
//        }
        //Long stateNum = Long.parseLong(state);
       // Long stateNum2 = stateNum+1;
        if (month == null || month.equals("0")) {
            month = "%";
        }
        if (indenNum == null) {
            indenNum = "%%%%";
        } else {
            indenNum = "%%" + indenNum + "%%";
        }
        User user = (User) request.getSession().getAttribute("user");
        List<Indent> indent = indentService.selectIndentByUserId_IndentNum_Month(user.getId(),indenNum,month);
       // List<ShopOrder> orderList = orderCarService.selectOrderByUserId_OrderNum_Month_StateNum(user.getId(), indenNum, month, stateNum ,stateNum2);
        //request.setAttribute("orderList", orderList);
        request.setAttribute("indent",indent);
        return "orderList";

    }

}

