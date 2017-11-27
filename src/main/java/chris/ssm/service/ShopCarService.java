package chris.ssm.service;

import chris.ssm.model.Orderlist;
import chris.ssm.model.ShopCar;

import java.util.List;

/**
 * Created by Chris on 2017/11/21
 */
public interface ShopCarService {
        public ShopCar findByUserId(Long userid);
        public boolean insert(Long userid);

}
