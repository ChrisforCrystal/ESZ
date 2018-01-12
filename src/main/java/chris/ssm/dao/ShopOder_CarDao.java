package chris.ssm.dao;


import chris.ssm.model.ShopCar;
import chris.ssm.model.ShopOrder;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ShopOder_CarDao {

    //car
    void  registerShopCar(ShopCar shopCar);

    ShopCar selectCarByUserId(@Param("userId") Long userId);

    void updateShopCar(ShopCar shopCar);



    //order
    void registerShopOrder(ShopOrder shopOrder);

    ShopOrder selectOrderByUserGoodsId(@Param("userId") Long userId,@Param("goodsId") Long goodsId);

    void updateShopOrder(ShopOrder shopOrder);

    List<ShopOrder> listOrderByUserId(@Param("userId") Long userId);

    void deleteOrderById(@Param("orderId") Long orderId);


}
