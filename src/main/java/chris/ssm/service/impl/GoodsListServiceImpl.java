package chris.ssm.service.impl;

import chris.ssm.dao.GoodsListDao;
import chris.ssm.model.Orderlist;
import chris.ssm.model.Goods;
import chris.ssm.service.goodsListService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Zhangxq on 2016/7/15.
 */

@Service
@Transactional(rollbackFor = Exception.class)
public class GoodsListServiceImpl implements goodsListService {
    
    @Resource
    private GoodsListDao goodsListDao;



    public List<Goods> findByPage(Integer page) {
        return goodsListDao.findByPage(page);
    }

    public List<Orderlist> findbyOrderName(int page, String orderName) {
        return null;
    }
}
