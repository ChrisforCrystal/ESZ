package chris.ssm.service;

import chris.ssm.model.Orderlist;
import chris.ssm.model.Goods;

import java.util.List;

/**
 * Created by Chris on 2017/8/21
 */
public interface goodsListService {
    public List<Goods> findByPage(Integer page);
    public List<Orderlist> findbyOrderName(int page, String orderName);
}
