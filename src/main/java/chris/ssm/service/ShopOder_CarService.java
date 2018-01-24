package chris.ssm.service;

import chris.ssm.model.Orderlist;
import chris.ssm.model.ShopCar;
import chris.ssm.model.ShopOrder;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by Chris on 2017/11/21
 */
public interface ShopOder_CarService {


    ShopCar selectCarByUserId(Long userId) ;

    void registerShopCar(ShopCar shopCar);

    void updateShopCar(ShopCar shopCar);




    void registerShopOrder(ShopOrder shopOrder);

    ShopOrder selectOrderByUserGoodsId_StateNum(Long userId, Long goodsId,Long stateNum);

    ShopOrder selectOrderByOrderId( Long orderId);

    List<ShopOrder> selectOrderByUserGoodsId_GoodsName_TypeId_StateNum( Long userId, String goodsName, String typeid,Long stateNum);

    void updateShopOrder(ShopOrder shopOrder);

    List<ShopOrder> listOrderByUserId(Long userId);

    void deleteOrderById( Long orderId);

    List<ShopOrder> selectOrderByUserId_OrderNum_Month_StateNum( Long userId,String orderNum, String month, Long stateNum, Long stateNum2);

    List<ShopOrder> selectOrderByIndentNum(String indenNum );

}
