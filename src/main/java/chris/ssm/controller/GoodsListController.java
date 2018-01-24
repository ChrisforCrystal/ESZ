package chris.ssm.controller;

import chris.ssm.model.*;
import chris.ssm.service.GoodsListService;
import org.apache.ibatis.annotations.Param;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * Created by Chris on 2017/11/21
 */
@Controller
public class GoodsListController {
    @Resource
    private GoodsListService goodsListService ;
    private Logger log = Logger.getLogger(GoodsListController.class);

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
        model.addAttribute("page", page);
        log.info(orderlist);
        return "chooseGoods";
    }


    //展示货物.可以选择当前页码显示多少
    @RequestMapping(value ="/listgoods" )
    public String listGoods(HttpServletRequest request, Model model, @RequestParam(value="pagesize", defaultValue="5") int pagesize,@RequestParam(value ="pagenum" ,defaultValue = "1") int pagenum){

        PageBean pb = new PageBean();

        QueryInfo qi = new QueryInfo();
        qi.setPagesize(pagesize);
        qi.setCurrentpage(pagenum);

       List<Goods> rs= goodsListService.findListByQR(qi);
       pb.setTotalrecord(goodsListService.countSumGoodsNum());//总记录数目
       pb.setList(rs);//符合规定的当前页的货物内容list集合
       pb.setCurrentpage(qi.getCurrentpage());//设定当前页
        pb.setPagesize(qi.getPagesize());

        request.setAttribute("pagebean",pb);
        return "chooseGoods";
    }


//    @RequestMapping(value ="/listgoods2PageSize" )
//    public String listGoods2PageSize(HttpServletRequest request, Model model,@RequestParam("pagesize") int pagesize){
//
//        PageBean pb = new PageBean();
//
//        QueryInfo qi = new QueryInfo();
//        qi.setPagesize(pagesize);
//
//        List<Goods> rs= goodsListService.findListByQR(qi);
//        pb.setTotalrecord(goodsListService.countSumGoodsNum());//总记录数目
//        pb.setList(rs);//符合规定的当前页的货物内容list集合
//        pb.setCurrentpage(qi.getCurrentpage());//设定当前页
//        pb.setPagesize(qi.getPagesize());
//
//        request.setAttribute("pagebean",pb);
//        return "chooseGoods";
//    }
//
//    @RequestMapping(value ="/listgoods2gotopage" )
//    public String listgoods2gotopage(HttpServletRequest request, Model model,@RequestParam("pagenum") int pagenum,@RequestParam("pagesize") int pagesize){
//
//        PageBean pb = new PageBean();
//
//        QueryInfo qi = new QueryInfo();
//        qi.setCurrentpage(pagenum);
//        qi.setPagesize(pagesize);
//
//        List<Goods> rs= goodsListService.findListByQR(qi);
//        pb.setTotalrecord(goodsListService.countSumGoodsNum());//总记录数目
//        pb.setList(rs);//符合规定的当前页的货物内容list集合
//        pb.setCurrentpage(qi.getCurrentpage());//设定当前页
//        pb.setPagesize(qi.getPagesize());
//
//        request.setAttribute("pagebean",pb);
//        return "chooseGoods";
//    }



}
