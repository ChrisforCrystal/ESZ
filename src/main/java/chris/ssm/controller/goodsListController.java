package chris.ssm.controller;

import chris.ssm.model.Orderlist;
import chris.ssm.model.QueryInfo;
import chris.ssm.model.Result;
import chris.ssm.model.Goods;
import chris.ssm.service.GoodsListService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Chris on 2017/11/21
 */
@Controller
public class goodsListController {
    @Resource
    private GoodsListService goodsListService ;
    private Logger log = Logger.getLogger(goodsListController.class);

    @RequestMapping("/goodslist")
    public String finishLog(HttpServletRequest request, Model model){
        List<Goods> goodsList =null;
        try {
            goodsList = goodsListService.findByPage(1);
        }catch (Exception e){
            log.info("数据出现错误");
        }
        model.addAttribute("shopList", goodsList);
        return "chooseGoods";
    }


    //根据名称查询

    @RequestMapping("/searchByname")
    @ResponseBody
    public String searchByname(HttpServletRequest request, Model model, @RequestParam("orderName")String orderName, @RequestParam("page")int page){
        Result result =new Result();
        page=page==0?1:page;
        List<Orderlist> orderlist = goodsListService.findbyOrderName(page,orderName);
        model.addAttribute("orderlist",orderlist);
        model.addAttribute("page",page);
        log.info(orderlist);
        return "chooseGoods";
    }


    //bo
    @RequestMapping("/listgoods")
    public String listGoods(HttpServletRequest request, Model model){


        QueryInfo qr = new QueryInfo();
       List rs= goodsListService.findListByQR(qr);
        List list = new ArrayList();

        System.out.println("123123123");
        return "chooseGoods";
    }

}
