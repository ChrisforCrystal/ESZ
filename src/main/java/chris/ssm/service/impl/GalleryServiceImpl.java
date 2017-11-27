package chris.ssm.service.impl;

import chris.ssm.model.Picture;
import chris.ssm.service.GalleryService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Chris on 2017/11/22
 */

@Service
@Transactional(rollbackFor = Exception.class)
public class GalleryServiceImpl implements GalleryService{
    public List<Picture> findByUserid(Long id) {
        return null;
    }

    public void deleteByid(Long id) {

    }

    public void insert(Picture picture) {

    }
}
