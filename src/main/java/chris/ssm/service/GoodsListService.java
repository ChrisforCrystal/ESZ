package chris.ssm.service;

import chris.ssm.model.Orderlist;
import chris.ssm.model.Goods;
import chris.ssm.model.QueryInfo;

import java.sql.ResultSet;
import java.util.List;

/**
 * Created by Chris on 2017/8/21
 */
public interface GoodsListService {
    public List<Goods> findByPage(Integer page);
    public List<Orderlist> findbyOrderName(int page, String orderName);

    //
    public List findListByQR(QueryInfo queryInfo);
}
