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

    ShopOrder selectOrderByUserGoodsId_StateNum(@Param("userId") Long userId,@Param("goodsId") Long goodsId,@Param("stateNum") Long stateNum);

    ShopOrder selectOrderByOrderId(@Param("orderId") Long orderId);

    List<ShopOrder> selectOrderByUserGoodsId_GoodsName_TypeId_StateNum(@Param("userId") Long userId,@Param("goodsName") String goodsName,@Param("typeid") String typeid,@Param("stateNum") Long stateNum);

    void updateShopOrder(ShopOrder shopOrder);

    List<ShopOrder> listOrderByUserId(@Param("userId") Long userId);

    void deleteOrderById(@Param("orderId") Long orderId);

    List<ShopOrder> selectOrderByUserId_OrderNum_Month_StateNum(@Param("userId") Long userId,@Param("orderNum") String orderNum,@Param("month") String month,@Param("stateNum") Long stateNum,@Param("stateNum2") Long stateNum2);

    List<ShopOrder> selectOrderByIndentNum(@Param("indenNum") String indenNum );



}
