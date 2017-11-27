package chris.ssm.service;

import chris.ssm.model.OrderHelper;
import chris.ssm.model.Orderlist;

import java.util.HashMap;
import java.util.List;

/**
 * Created by Chris on 2017/11/21
 */
public interface OrderHelperService {
    public boolean insert(OrderHelper orderlist);
    public List<OrderHelper> findOrderHelperList(int page);
    public List<OrderHelper> findbyOrderParas(int page, String orderNumber,int month);
    public List<OrderHelper> findbyOrderNum(String OrderNum);

}
