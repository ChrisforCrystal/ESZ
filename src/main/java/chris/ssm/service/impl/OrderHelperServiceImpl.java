package chris.ssm.service.impl;

import chris.ssm.model.OrderHelper;
import chris.ssm.model.Orderlist;
import chris.ssm.service.OrderHelperService;
import chris.ssm.service.OrderService;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;

/**
 * Created by Chris on 2017/8/21
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class OrderHelperServiceImpl implements OrderHelperService{

//    @Resource
//    OrderHelpDao orderHelpDao;
    public boolean insert(OrderHelper orderlist) {
        return false;
    }

    public List<OrderHelper> findOrderHelperList(int page) {
        return null;
    }

    public List<OrderHelper> findbyOrderParas(int page, String orderName, int month) {

        return null;
    }

    public List<OrderHelper> findbyOrderNum(String OrderNum) {
        return  null;
    }
}
