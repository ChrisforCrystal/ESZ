package chris.ssm.dao;

import chris.ssm.model.Goods;
import chris.ssm.model.QueryInfo;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.util.List;

/**
 * Created by Chris on 2017/11/21
 */

@Repository
public interface GoodsListDao {
    //展示第一页 每页显示8条
    public List<Goods> findByPage(Integer page);
    //

   public  List findListByQR(QueryInfo queryInfo) ;


}
