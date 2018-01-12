package chris.ssm.controller;


import chris.ssm.model.*;
import chris.ssm.service.GoodsListService;
import chris.ssm.service.ShopOder_CarService;
import chris.ssm.service.UserService;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

@Controller
public class ShopOder_CarController {


    @Resource
    private UserService userService;
    @Resource
    private ShopOder_CarService orderCarService;
    @Resource
    private GoodsListService goodsService;


    @RequestMapping("/putInTheOrder")
    @ResponseBody
    public Result putInTheOrder(HttpServletRequest request, Model model, @Param("userid") Long userid, @Param("goodsid") Long goodsid){


        Result result = new Result();
        User user = userService.selectUserById(userid);
        Goods good = goodsService.selectGoodsById(goodsid);
        ShopCar shopCar = orderCarService.selectCarByUserId(userid);

       ShopOrder shopOrder =  orderCarService.selectOrderByUserGoodsId(userid,goodsid);
       if(good.getGoodsNum()>=1) {      //判定物品是否有余货
           if (shopOrder == null) {
               shopOrder = new ShopOrder();
               shopOrder.setUserId(userid);
               shopOrder.setShopcarId(shopCar.getShopcarId());
               shopOrder.setGoodsId(goodsid);
               shopOrder.setGoodsName(good.getGoodsName());
               shopOrder.setGoodsNum(1);
               shopOrder.setGoodsPrice(good.getPrice());
               shopOrder.setCreateTime(new Date());
               shopOrder.setModifyTime(new Date());
               orderCarService.registerShopOrder(shopOrder);


           } else {
               //判定再次增加货物是否会超过上限
               if(shopOrder.getGoodsNum()+1 > good.getGoodsNum()){
                   result.setCode(0);
                   result.setMsg("抱歉,该货物已经没有库存了.");
                   return result;
               }
               shopOrder.setGoodsNum(shopOrder.getGoodsNum() + 1);
               shopOrder.setModifyTime(new Date());
               orderCarService.updateShopOrder(shopOrder);
           }
           shopCar.setTotalprice(shopCar.getTotalprice()+good.getPrice());
           shopCar.setModifyTime(new Date());
           orderCarService.updateShopCar(shopCar);
           result.setCode(1000);
           result.setMsg("添加购物车成功.");
           return result;
       }else{
           result.setCode(0);
           result.setMsg("抱歉,该货物已经没有库存了.");
           return result;
       }


    }

    @RequestMapping("/shopCar")

    public String  listShopCarOrder(HttpServletRequest request, Model model){

        double carTotalPrice=0;
        User user = (User) request.getSession().getAttribute("user");
        ShopCar shopCar = orderCarService.selectCarByUserId(user.getId());
        List<ShopOrder> orderList = orderCarService.listOrderByUserId(user.getId());
        //重新计算购物车的总价格
       for(int i=0;i< orderList.size();i++){
           carTotalPrice=carTotalPrice+ orderList.get(i).getTotalPrice();
       }
       shopCar.setTotalprice(carTotalPrice);
       orderCarService.updateShopCar(shopCar);
        request.setAttribute("orderList",orderList);
        request.setAttribute("shopCar",shopCar);
        //System.out.println(goodsid);
        return "shopCar";

    }

    @RequestMapping("/addGoodsInOrder")
    @ResponseBody
    public Result addGoodsInOrder(HttpServletRequest request, Model model,@Param("goodsid") Long goodsid){
        Result result = new Result();
        User user = (User) request.getSession().getAttribute("user");
        Goods good = goodsService.selectGoodsById(goodsid);
        ShopOrder shopOrder =  orderCarService.selectOrderByUserGoodsId(user.getId(),goodsid);
        ShopCar shopCar = orderCarService.selectCarByUserId(user.getId());

        if(good.getGoodsNum() > shopOrder.getGoodsNum()) {
            shopOrder.setGoodsNum(shopOrder.getGoodsNum() + 1);
            shopCar.setTotalprice(shopCar.getTotalprice() + shopOrder.getGoodsPrice());
            orderCarService.updateShopCar(shopCar);
            orderCarService.updateShopOrder(shopOrder);
            result.setCode(1000);
        }else{
            result.setCode(0);
        }
        result.setMsg("a");
        return result;

    }


    @RequestMapping("/cutGoodsInOrder")
    @ResponseBody
    public Result cutGoodsInOrder(HttpServletRequest request, Model model,@Param("goodsid") Long goodsid){
        Result result = new Result();
        User user = (User) request.getSession().getAttribute("user");
        Goods good = goodsService.selectGoodsById(goodsid);
        ShopOrder shopOrder =  orderCarService.selectOrderByUserGoodsId(user.getId(),goodsid);
        ShopCar shopCar = orderCarService.selectCarByUserId(user.getId());

        if( shopOrder.getGoodsNum() > 1) {
            shopOrder.setGoodsNum(shopOrder.getGoodsNum() - 1);
            shopCar.setTotalprice(shopCar.getTotalprice() - shopOrder.getGoodsPrice());
            orderCarService.updateShopCar(shopCar);
            orderCarService.updateShopOrder(shopOrder);
            result.setCode(1000);
        }else{
            result.setCode(0);
        }
        result.setMsg("a");
        return result;

    }


    @RequestMapping("/deleteOrder")
    public String deleteOrder(HttpServletRequest request, Model model,@Param("orderid") Long orderid){

        orderCarService.deleteOrderById(orderid);

        return "redirect:/shopCar";
    }
}
