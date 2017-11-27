package chris.ssm.service;

import chris.ssm.model.Orderlist;

import java.util.HashMap;
import java.util.List;

/**
 * Created by Chris on 2017/11/21
 */
public interface OrderService {
    public boolean insert(Orderlist orderlist);
    public List<Orderlist> findOrderList(int page );
    public List<Orderlist> findbyOrderName(int page,String orderName);
    public List<Orderlist> findbyUserid(Long userid,int state);
    public List<Orderlist> findbyOrdernum(String ordernum);

    public boolean deleByid(Long orderid);

    public Orderlist findByid(Long orderid);
    public boolean update(Orderlist orderlist);
    public Orderlist searchByParams(HashMap hashMap);


}
