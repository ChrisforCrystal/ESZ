package chris.ssm.service.impl;

import chris.ssm.model.Orderlist;
import chris.ssm.service.OrderService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;

/**
 * Created by Chris on 2017/11/21
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class OrderServiceImpl implements OrderService {
    public boolean insert(Orderlist orderlist) {
        return false;
    }

    public List<Orderlist> findOrderList(int page) {
        return null;
    }

    public List<Orderlist> findbyOrderName(int page,String orderName) {
        return null;
    }

    public List<Orderlist> findbyUserid(Long userid, int state) {
        return null;
    }

    public List<Orderlist> findbyOrdernum(String ordernum) {
        return null;
    }

    public boolean deleByid(Long orderid) {
        return false;
    }

    public Orderlist findByid(Long orderid) {
        return null;
    }

    public boolean update(Orderlist orderlist) {
        return false;
    }

    public Orderlist searchByParams(HashMap hashMap) {
        return null;
    }

    public List<Orderlist> findbyUserid(Long userid) {
        return null;
    }
}
