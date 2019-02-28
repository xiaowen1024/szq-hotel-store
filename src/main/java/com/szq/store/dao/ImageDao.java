package com.szq.store.dao;


import com.szq.store.entity.bo.ImageBo;

/**
 * Created by yxw on 2018/8/1.
 */
public interface ImageDao {
    public ImageBo queryImage(Integer id);
    public void updateImage(ImageBo imageBo);
    public  void addImage(ImageBo imageBo);
    public void deleteImage(Integer Id);

}
