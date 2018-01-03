package chris.ssm.controller;

import chris.ssm.model.OrderHelper;
import chris.ssm.model.Orderlist;
import chris.ssm.service.OrderHelperService;
import chris.ssm.service.OrderService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Chris on 2017/8/21
 */
@Controller
public class OrderHelpController {
    @Resource
    private OrderService orderService;
    @Resource
    private OrderHelperService orderHelperService;
    private Logger log = Logger.getLogger(OrderHelpController.class);


    //订单展示

    @RequestMapping("/orderHelpShow")
    public String shopCarShow(HttpServletRequest request, Model model ,@RequestParam("userid")Long userid){
        //根据userid 找到所有的订单 0代表未完成支付的订单
        List<OrderHelper> orderHelperList = orderHelperService.findOrderHelperList(1);

        model.addAttribute("orderHelperList",orderHelperList);
        return "orderList";
    }



    @RequestMapping("/orderHelpShowPara")
    public String orderHelpShowPara(HttpServletRequest request, Model model ,@RequestParam("orderNum")String orderNum
            ,@RequestParam("month")int month,@RequestParam("page")int page){
        //根据userid 找到所有的订单 0代表未完成支付的订单
        List<OrderHelper> orderHelperList = null;
        try{
            orderHelperList=orderHelperService.findbyOrderParas(page,orderNum,month);
        }catch (Exception e){
            log.info(e.getMessage());
        }
        model.addAttribute("orderHelperList",orderHelperList);
        model.addAttribute("page",page);
        model.addAttribute("orderNum",orderNum);
        model.addAttribute("month",month);
        return "orderList";
    }


    @RequestMapping("/orderHelpDetail")
    public String orderHelpDetail(HttpServletRequest request, Model model ,@RequestParam("orderNum")String orderNum){
        //根据订单编号找到所有的已经支付过的订单
        List<Orderlist> orderlistList=null;
        try {
            orderlistList= orderService.findbyOrdernum(orderNum);
        }catch (Exception e){
            log.info(e.getMessage());
        }
        for(Orderlist olist:orderlistList){
            olist.setSumMoney(olist.getMoney() * olist.getNum());
        }
        model.addAttribute("orderlistList",orderlistList);
        model.addAttribute("orderNum",orderNum);
        return "orderList";
    }

}

