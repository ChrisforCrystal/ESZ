package chris.ssm.controller;


import chris.ssm.model.*;
import chris.ssm.service.GoodsListService;
import chris.ssm.service.IndentService;
import chris.ssm.service.ShopOder_CarService;
import chris.ssm.service.UserService;
import com.alibaba.fastjson.JSONArray;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.json.Json;
import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.util.*;

@Controller
public class ShopOder_CarController {


    @Resource
    private UserService userService;
    @Resource
    private ShopOder_CarService orderCarService;
    @Resource
    private GoodsListService goodsService;
    @Resource
    private IndentService indentService;

    //将货物放入购物车中,若货物在购物车中不存在,则进行订单的更新操作
    @RequestMapping("/putInTheOrder")
    @ResponseBody
    public Result putInTheOrder(HttpServletRequest request, Model model, @Param("userid") Long userid, @Param("goodsid") Long goodsid,@Param("statenum")  Long statenum) {

        Result result = new Result();
        User user = userService.selectUserById(userid);
        Goods good = goodsService.selectGoodsById(goodsid);
        ShopCar shopCar = orderCarService.selectCarByUserId(userid);

        ShopOrder shopOrder = orderCarService.selectOrderByUserGoodsId_StateNum(userid, goodsid,statenum);
        if (good.getGoodsNum() >= 1) {      //判定物品是否有余货
            if (shopOrder == null) {
                shopOrder = new ShopOrder();
                shopOrder.setUserId(userid);
                shopOrder.setShopcarId(shopCar.getShopcarId());
                shopOrder.setGoodsId(goodsid);
                shopOrder.setGoodsName(good.getGoodsName());
                shopOrder.setGoodsNum(1);
                shopOrder.setGoodsPrice(good.getPrice());
                shopOrder.setTypeid(good.getTypeId());
                shopOrder.setTypeName(good.getTypeName());
                shopOrder.setCreateTime(new Date());
                shopOrder.setModifyTime(new Date());
                shopOrder.setStateNum(statenum);
                orderCarService.registerShopOrder(shopOrder);
            } else {
                //判定再次增加货物是否会超过上限
                if (shopOrder.getGoodsNum() + 1 > good.getGoodsNum()) {
                    result.setCode(0);
                    result.setMsg("抱歉,该货物已经没有库存了.");
                    return result;
                }
                shopOrder.setGoodsNum(shopOrder.getGoodsNum() + 1);
                shopOrder.setModifyTime(new Date());
                orderCarService.updateShopOrder(shopOrder);
            }
            //不在加入购物车的时候更新总价格数据了,而需要在购物车页面勾选的时候在更新
            //shopCar.setTotalprice(shopCar.getTotalprice()+good.getPrice());
            shopCar.setModifyTime(new Date());
            orderCarService.updateShopCar(shopCar);
            result.setCode(1000);
            result.setMsg("添加购物车成功.");
            return result;
        } else {
            result.setCode(0);
            result.setMsg("抱歉,该货物已经没有库存了.");
            return result;
        }

    }


    //显示用户购物车中的订单,以及完成检索功能,添加了装填码
    @RequestMapping("/shopCar")

    public String listShopCarOrder(HttpServletRequest request, Model model) {


        String searchname = request.getParameter("searchname");
        String searchtype = request.getParameter("searchtype");
        String state =  request.getParameter("statenum");
        Long stateNum;
        if (state == null || state.equals("")){
                 stateNum = null;
        }else{
             stateNum =  Long.parseLong(state);
        }

//        if (state == null){
//            state="1";
//        }
//        Long stateNum =  Long.parseLong(state);
//        if (searchtype == null || searchtype.equals("0")) {
//            searchtype = "%";
//        }
//        if (searchname == null) {
//            searchname = "%%%%";
//        } else {
//            searchname = "%%" + searchname + "%%";
//        }

        double carTotalPrice = 0;
        User user = (User) request.getSession().getAttribute("user");
        ShopCar shopCar = orderCarService.selectCarByUserId(user.getId());
        List<ShopOrder> orderList = orderCarService.selectOrderByUserGoodsId_GoodsName_TypeId_StateNum(user.getId(), searchname, searchtype,stateNum);
        // List<ShopOrder> orderList = orderCarService.listOrderByUserId(user.getId());
        //防止在搜索显示部分信息时总价错误,重新计算购物车的总价格
        //不在更新购物车价格信息,价格信息只在勾选中进行变更
//        if(searchtype.equals("%") && searchname.equals("%%%%")) {
//            for (int i = 0; i < orderList.size(); i++) {
//                carTotalPrice = carTotalPrice + orderList.get(i).getTotalPrice();
//            }
//
//            shopCar.setTotalprice(carTotalPrice);
//            orderCarService.updateShopCar(shopCar);
//        }
        request.setAttribute("orderList", orderList);
        request.setAttribute("shopCar", shopCar);
        //System.out.println(goodsid);
        return "shopCar";

    }
    //添加订单中货物的数量
    @RequestMapping("/addGoodsInOrder")
    @ResponseBody
    public Result addGoodsInOrder(HttpServletRequest request, Model model, @Param("goodsid") Long goodsid,@Param("statenum")  Long statenum) {
        Result result = new Result();
        User user = (User) request.getSession().getAttribute("user");
        Goods good = goodsService.selectGoodsById(goodsid);
        ShopOrder shopOrder = orderCarService.selectOrderByUserGoodsId_StateNum(user.getId(), goodsid,statenum);
        //ShopCar shopCar = orderCarService.selectCarByUserId(user.getId());

        if (good.getGoodsNum() > shopOrder.getGoodsNum()) {
            shopOrder.setGoodsNum(shopOrder.getGoodsNum() + 1);
            //添加的时候不再修改购物车的总价格,仅在勾选的时候更改
            // shopCar.setTotalprice(shopCar.getTotalprice() + shopOrder.getGoodsPrice());
            // orderCarService.updateShopCar(shopCar);
            orderCarService.updateShopOrder(shopOrder);
            result.setCode(1000);
        } else {
            result.setCode(0);
        }
        result.setMsg("a");
        return result;

    }

    //减少订单中货物的数量.
    @RequestMapping("/cutGoodsInOrder")
    @ResponseBody
    public Result cutGoodsInOrder(HttpServletRequest request, Model model, @Param("goodsid") Long goodsid,@Param("statenum")  Long statenum) {
        Result result = new Result();
        User user = (User) request.getSession().getAttribute("user");
        Goods good = goodsService.selectGoodsById(goodsid);
        ShopOrder shopOrder = orderCarService.selectOrderByUserGoodsId_StateNum(user.getId(), goodsid,statenum);
        // ShopCar shopCar = orderCarService.selectCarByUserId(user.getId());

        if (shopOrder.getGoodsNum() > 1) {
            shopOrder.setGoodsNum(shopOrder.getGoodsNum() - 1);
            //减少的时候不再修改购物车的总价格,仅在勾选的时候更改
            //shopCar.setTotalprice(shopCar.getTotalprice() - shopOrder.getGoodsPrice());
            //orderCarService.updateShopCar(shopCar);
            orderCarService.updateShopOrder(shopOrder);
            result.setCode(1000);
        } else {
            result.setCode(0);
        }
        result.setMsg("a");
        return result;

    }

    //将该订单从购物车中提交,放入提交订单中,改变状态码,并注册订单
    @RequestMapping("/putChooseOrder")
    @ResponseBody
    public Result updateCarPrice(HttpServletRequest request, Model model, @RequestParam("chooseorderid[]") Long[] chooseorderid,@RequestParam("totalprice") double totalprice) {


        Result result = new Result();
        User user = (User) request.getSession().getAttribute("user");


        for (int i = 0; i < chooseorderid.length; i++) {
            ShopOrder shopOrder = orderCarService.selectOrderByOrderId(chooseorderid[i]);//得到该order
            int ordergoodsnum = shopOrder.getGoodsNum();//确认该订单中物品要购买的数目
            Goods goods = goodsService.selectGoodsById(shopOrder.getGoodsId());//确认该物品
            int goodsnum = goods.getGoodsNum();//得到该物品的现有库存
            if (ordergoodsnum > goodsnum) {
                result.setCode(0);
                result.setMsg("货物" + goods.getGoodsName() + "的购买数量超过了库存数目,当前库存的数目为" + goods.getGoodsNum());
                return result;
            }
        }

        String indentNum = new Date().getTime()+"";//订单码生成

        //创建订单
        Indent indent = new Indent();
        indent.setUserId(user.getId());
        indent.setAddress(user.getAddress());
        indent.setIndentNum(indentNum);//订单号
        indent.setName(user.getNick());
        indent.setPrice(totalprice);//从页面中获得
        indent.setState(1);
        indent.setCreateTime(new Date());
        indent.setModifyTime(new Date());
        indentService.registerIndent(indent);


        //前面的确保每一个货物都是满足购物条件的
        for (int i = 0; i < chooseorderid.length; i++) {
            ShopOrder shopOrder = orderCarService.selectOrderByOrderId(chooseorderid[i]);//得到该order
            shopOrder.setModifyTime(new Date());
            shopOrder.setStateNum((long) 2); //更改状态码
            shopOrder.setIndentNum(indentNum);//更新订单号
            orderCarService.updateShopOrder(shopOrder);
            //在总订单列表中加入该订单的信息
        }

        ShopCar shopCar = orderCarService.selectCarByUserId(user.getId());//得到购物车
        orderCarService.updateShopCar(shopCar);//更新购物车的总价格
        // shopCar.setTotalprice(goodstotalprice);
        result.setCode(1000);
        return result;

    }

    //改变订单中的数目,数字直接输入
    @RequestMapping("/changeGoodsNumInOrder")
    @ResponseBody
    public Result changeGoodsNumInOrder(HttpServletRequest request, Model model, @Param("goodsid") Long goodsid, @Param("goodsnum") int goodsnum,@Param("statenum")  Long statenum) {
        Result result = new Result();
        User user = (User) request.getSession().getAttribute("user");
        Goods good = goodsService.selectGoodsById(goodsid);
        ShopOrder order = orderCarService.selectOrderByUserGoodsId_StateNum(user.getId(), goodsid,statenum);
        // ShopCar shopCar = orderCarService.selectCarByUserId(user.getId());
        if (goodsnum > good.getGoodsNum()) {
            result.setCode(0);

        } else {
            order.setGoodsNum(goodsnum);
            //仅仅在勾选的时候更改
            //shopCar.setTotalprice(shopCar.getTotalprice()+(goodsnum-oldnum)*good.getPrice());

            orderCarService.updateShopOrder(order);
            //orderCarService.updateShopCar(shopCar);
            result.setCode(1000);
        }
        return result;
    }

    //订单删除
    @RequestMapping("/deleteOrder")
    public String deleteOrder(HttpServletRequest request, Model model, @Param("orderid") Long orderid) {

        orderCarService.deleteOrderById(orderid);

        return "redirect:/shopCar";
    }


}
