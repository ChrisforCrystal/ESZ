package chris.ssm.dao;

import chris.ssm.model.Goods;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Chris on 2017/11/21
 */

@Repository
public class GoodsListDao {
    //展示第一页 每页显示8条
    public List<Goods> findByPage(Integer page){
        return null;
    }
    //


}
