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


    ShopCar selectCarByUserId(Long userId);

    void registerShopCar(ShopCar shopCar);

    void updateShopCar(ShopCar shopCar);




    void registerShopOrder(ShopOrder shopOrder);

    ShopOrder selectOrderByUserGoodsId(Long userId, Long goodsId);

    void updateShopOrder(ShopOrder shopOrder);

    List<ShopOrder> listOrderByUserId(Long userId);

    void deleteOrderById(@Param("orderId") Long orderId);
}
