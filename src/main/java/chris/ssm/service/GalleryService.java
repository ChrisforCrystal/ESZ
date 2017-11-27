package chris.ssm.service;

import chris.ssm.model.Picture;

import java.util.List;

/**
 * Created by Chris on 2017/8/22
 */
public interface GalleryService {
    List<Picture> findByUserid(Long id);
    public void deleteByid(Long id);
    public void insert(Picture picture);
}
