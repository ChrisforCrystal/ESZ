package chris.ssm.service.impl;

import chris.ssm.dao.ShopOder_CarDao;
import chris.ssm.model.ShopCar;
import chris.ssm.model.ShopOrder;
import chris.ssm.service.ShopOder_CarService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Chris on 2017/11/21
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class ShopOder_CarServiceImp implements ShopOder_CarService {

    @Resource
    private ShopOder_CarDao orderCardao;

    //Car
    public ShopCar selectCarByUserId(Long userId) {
        return orderCardao.selectCarByUserId(userId);
    }

    public void registerShopCar(ShopCar shopCar) {
        orderCardao.registerShopCar(shopCar);
    }

    public void updateShopCar(ShopCar shopCar) {
        orderCardao.updateShopCar(shopCar);
    }


    //Order
    public void registerShopOrder(ShopOrder shopOrder) {
        orderCardao.registerShopOrder(shopOrder);

    }

    public ShopOrder selectOrderByUserGoodsId(Long userId, Long goodsId) {
        return orderCardao.selectOrderByUserGoodsId(userId, goodsId);
    }

    public void updateShopOrder(ShopOrder shopOrder) {
        orderCardao.updateShopOrder(shopOrder);
    }

    public List<ShopOrder> listOrderByUserId(Long userId) {
        return orderCardao.listOrderByUserId(userId);
    }

    public void deleteOrderById(Long orderId) {
        orderCardao.deleteOrderById(orderId);
    }
}
