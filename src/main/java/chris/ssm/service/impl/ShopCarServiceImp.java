package chris.ssm.service.impl;

import chris.ssm.model.Orderlist;
import chris.ssm.model.ShopCar;
import chris.ssm.service.ShopCarService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Chris on 2017/11/21
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class ShopCarServiceImp implements ShopCarService{


    public ShopCar findByUserId(Long userid) {
        return null;
    }

    public boolean insert(Long userid) {
        return false;
    }



}
