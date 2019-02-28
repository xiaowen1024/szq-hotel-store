package com.szq.store.service;

import com.szq.store.dao.UserDAO;
import com.szq.store.entity.bo.XtgMaterialLibrary;
import com.szq.store.entity.bo.imageresultBo;
import com.szq.store.pop.SystemConfig;
import com.szq.store.util.DateUtils;
import com.szq.store.util.OssUploadFileUtil;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.util.Date;

/**
 * Created by yxw on 2018/9/26.
 */
@Service("UploadService")
@Transactional
public class UploadService {
    @Resource
    private UserDAO userDAO;

    public imageresultBo uploadMaterialLibrary(MultipartFile file){
        imageresultBo news =new imageresultBo();
        if(file.isEmpty()){
            news.setCode("0");
            news.setMsg("文件有误，请重新选择！");
        }else{
            String originalFilename = file.getOriginalFilename();
            //获得文件后缀名称
            String imageRoot = SystemConfig.getString("img_file_root");
            String yyyyMMdd = DateUtils.formatDate(DateUtils.LONG_DATE_PATTERN_PLAIN, new Date());
            String imageUrl = imageRoot  + "/"+yyyyMMdd +  originalFilename;
            OssUploadFileUtil.uploadMultipartFile(file,
                    SystemConfig.getString("image_bucketName"), imageUrl);

            String fileExt = originalFilename.substring(originalFilename.lastIndexOf(".") + 1);
            XtgMaterialLibrary materialLibrary = new XtgMaterialLibrary();
            try {
                BufferedImage bi = ImageIO.read(file.getInputStream());
                materialLibrary.setImageWidth(bi.getWidth());
                materialLibrary.setImageHeight(bi.getHeight());
                bi.flush();
            }catch (Exception e){
                e.printStackTrace();
            }
            materialLibrary.setImageUrl(imageUrl);
            String Url = "https://" +SystemConfig.getString("image_bucketName")+".oss-cn-beijing.aliyuncs.com/"+imageUrl;
            // 添加素材信息
            news.setImageUrl(imageUrl);
            news.setUrl(Url);
        }
        return news;
    }
}
