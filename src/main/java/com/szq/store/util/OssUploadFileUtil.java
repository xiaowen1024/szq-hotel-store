package com.szq.store.util;

import com.aliyun.oss.OSSClient;
import com.aliyun.oss.model.OSSObject;
import com.aliyun.oss.model.ObjectMetadata;
import org.bouncycastle.util.encoders.Base64;
import org.springframework.web.multipart.MultipartFile;
import sun.misc.BASE64Decoder;

import javax.imageio.ImageIO;
import javax.imageio.stream.ImageOutputStream;
import java.awt.image.BufferedImage;
import java.awt.image.ImageObserver;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.InputStream;
import java.net.URL;
import java.text.MessageFormat;
import java.util.Date;

/**
 * Created by Administrator on 2017/11/23.
 */
public class OssUploadFileUtil {

    public static final String endpoint = "http://oss-cn-beijing.aliyuncs.com";
    public static final String accessKeyId = "LTAIuK572qfOFVi8";
    public static final String accessKeySecret = "T52KlqdbHHCq344ohlHXPVYjMDUkRL";
    public static  final  String  filedir="image/";
    public  static  final String bucketName="guangheimage";

    public static void uploadFile(String fileUrl, String bucketName, String imageUrl){

        // 创建OSSClient实例
        OSSClient ossClient = new OSSClient(endpoint, accessKeyId, accessKeySecret);
        try {
            File file = new File(fileUrl);
            ossClient.putObject(bucketName, imageUrl, file);
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            // 关闭client
            ossClient.shutdown();
        }
    }

    public static void uploadFile(File file, String bucketName, String imageUrl){
        // 创建OSSClient实例
        OSSClient ossClient = new OSSClient(endpoint, accessKeyId, accessKeySecret);
        try {
            // 创建上传Object的Metadata
            ObjectMetadata meta = new ObjectMetadata();
            meta.setContentType(getContentType(imageUrl));
            ossClient.putObject(bucketName, imageUrl, file, meta);
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            // 关闭client
            ossClient.shutdown();
        }
    }

    public static String getUploadFileName(String uploadFileName){
        String yyyyMMddhhmmss = DateUtils.formatDate(
                DateUtils.LONG_DATE_PATTERN_PLAIN, new Date());
        String fileExt = uploadFileName.substring(uploadFileName.lastIndexOf(".") + 1).toLowerCase();
        String rnd = RandomUtils.getRandomNumber(4);
        String fileName = yyyyMMddhhmmss + rnd + "." + fileExt;
        return fileName;
    }

    public static String uploadFileBySavePath(File file, String fileName, String saveFolder,
                                              String bucketName, String savePath){
        if (null != file) {
            if (file.length() > 10485760 / 2) {
                return null;
            }
            String actuallySavePath = MessageFormat.format(savePath,
                    new Object[]{saveFolder, fileName});
            uploadFile(file, bucketName, actuallySavePath);
            return actuallySavePath;
        }
        return null;
    }

    public static void uploadFileInfo(String image, String bucketName, String imageUrl){
        // 创建OSSClient实例
        OSSClient ossClient = new OSSClient(endpoint, accessKeyId, accessKeySecret);
        try {
            ossClient.putObject(bucketName, imageUrl, new ByteArrayInputStream(Base64.decode(image)));
            System.out.println("长度" + Base64.decode(image).length);
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            // 关闭client
            ossClient.shutdown();
        }
    }

    public static void uploadFileInfoBase64(String bucketName, String imageUrl, String fileBase64){
        // 创建OSSClient实例
        OSSClient ossClient = new OSSClient(endpoint, accessKeyId, accessKeySecret);
        try {
            InputStream input = getImageStream(cutAndZoomCenterImage(fileBase64));
            ossClient.putObject(bucketName, imageUrl, input);
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            ossClient.shutdown();
        }
    }

    public static void uploadFileInfo(String bucketName, String imageUrl, BufferedImage bufferedImage){
        // 创建OSSClient实例
        OSSClient ossClient = new OSSClient(endpoint, accessKeyId, accessKeySecret);
        try {
            // 创建上传Object的Metadata
            ObjectMetadata meta = new ObjectMetadata();
            meta.setContentType(getContentType(imageUrl));
            InputStream input = getImageStream(bufferedImage);
            ossClient.putObject(bucketName, imageUrl, input, meta);
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            // 关闭client
            ossClient.shutdown();
        }
    }

    public static void uploadMultipartFile( MultipartFile file, String bucketName, String imageUrl) {
        // 创建OSSClient实例
        OSSClient ossClient = new OSSClient(endpoint, accessKeyId, accessKeySecret);
        try {
            // 创建上传Object的Metadata
            ObjectMetadata meta = new ObjectMetadata();
            meta.setContentType(getContentType(imageUrl));
            ossClient.putObject(bucketName, imageUrl, file.getInputStream(), meta);
        } catch (Exception e) {
            e.printStackTrace();
        }
        // 关闭client
        ossClient.shutdown();
    }

    public static InputStream getInputStream(String bucketName, String fileUrl){
        // 创建OSSClient实例
        OSSClient ossClient = new OSSClient(endpoint, accessKeyId, accessKeySecret);
        InputStream inStream = null;
        try {
            OSSObject ossObject = ossClient.getObject(bucketName, fileUrl);
            // 读Object内容
            inStream = ossObject.getObjectContent();

        }catch (Exception e) {
            e.printStackTrace();
        }

        return inStream;
    }

    /**
     * 删除文件
     * @param bucketName
     * @param imageUrl
     */
    public static void deleteFileInfo(String bucketName, String imageUrl){
        // 创建OSSClient实例
        OSSClient ossClient = new OSSClient(endpoint, accessKeyId, accessKeySecret);
        try {
            // 删除Object
            ossClient.deleteObject(bucketName, imageUrl);
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            // 关闭client
            ossClient.shutdown();
        }
    }


    private static BufferedImage cutAndZoomCenterImage(String src) {
        BufferedImage result = null;
        try {
            BufferedImage im = getBufferedImage(src);
            int width = im.getWidth();
            int height = im.getHeight();
            float resizeTimes = 0.3F;
            int toWidth;
            int toHeight;
            if(width >= height) {
                toWidth = 360;
                resizeTimes = 360.0F / (float)width;
                toHeight = (int)((float)height * resizeTimes);
            } else {
                toHeight = 360;
                resizeTimes = 360.0F / (float)height;
                toWidth = (int)((float)width * resizeTimes);
            }

            System.out.println("原始宽度" + width);
            System.out.println("原始高度" + height);
            System.out.println("压缩比例" + resizeTimes);
            System.out.println("目标宽度" + toWidth);
            System.out.println("目标高度" + toHeight);
            result = new BufferedImage(toWidth, toHeight, 1);
            result.getGraphics().drawImage(im.getScaledInstance(toWidth, toHeight, 4), 0,
                    0, (ImageObserver)null);
        } catch (Exception var9) {
            System.out.println("创建缩略图发生异" + var9.getMessage());
        }
        return result;
    }

    private static InputStream baseToInputStream(String base64string){
        ByteArrayInputStream stream = null;
        try {
            BASE64Decoder decoder = new BASE64Decoder();
            byte[] bytes1 = decoder.decodeBuffer(base64string);
            stream = new ByteArrayInputStream(bytes1);
        } catch (Exception e) {
        }
        return stream;
    }

    private static BufferedImage getBufferedImage(String base64string)
    {
        BufferedImage image = null;
        try {
            InputStream stream = baseToInputStream(base64string);
            image = ImageIO.read(stream);
            System.out.println(">>>"+image.getWidth() + "," + image.getHeight()+"<<<");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return image;
    }

    private static InputStream getImageStream(BufferedImage bufferedImage){
        InputStream is = null;
        ByteArrayOutputStream bs = new ByteArrayOutputStream();
        ImageOutputStream imOut;
        try {
            imOut = ImageIO.createImageOutputStream(bs);
            ImageIO.write(bufferedImage, "jpg",imOut);
            is= new ByteArrayInputStream(bs.toByteArray());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return is;
    }

    public static String getContentType(String fileName){
        String fileExtension = fileName.substring(fileName.lastIndexOf(".") + 1);
        System.out.println(fileExtension);
        if("bmp".equalsIgnoreCase(fileExtension)) {
            return "image/bmp";
        }else if("gif".equalsIgnoreCase(fileExtension)) {
            return "image/gif";
        }else if("jpeg".equalsIgnoreCase(fileExtension) || "jpg".equalsIgnoreCase(fileExtension)) {
            return "image/jpeg";
        }else if("png".equalsIgnoreCase(fileExtension)){
            return "image/png";
        }else if("html".equalsIgnoreCase(fileExtension)) {
            return "text/html";
        }else if("txt".equalsIgnoreCase(fileExtension)) {
            return "text/plain";
        }else if("vsd".equalsIgnoreCase(fileExtension)) {
            return "application/vnd.visio";
        }else if("ppt".equalsIgnoreCase(fileExtension) || "pptx".equalsIgnoreCase(fileExtension)) {
            return "application/vnd.ms-powerpoint";
        }else if("doc".equalsIgnoreCase(fileExtension) || "docx".equalsIgnoreCase(fileExtension)) {
            return "application/msword";
        }else if("xml".equalsIgnoreCase(fileExtension)) {
            return "text/xml";
        }else if("pdf".equalsIgnoreCase(fileExtension)){
            return "application/pdf";
        }else if("xls".equalsIgnoreCase(fileExtension) || "xlsx".equalsIgnoreCase(fileExtension)){
            return "application/vnd.ms-excel";
        }
        return "text/html";
    }
    public String getImgUrl(String fileUrl) {

        System.out.println(fileUrl);

        if (!StringUtils.isEmpty(fileUrl)) {

            String[] split = fileUrl.split("/");

            return this.getUrl(this.filedir + split[split.length - 1]);

        }

        return null;

    }
    public String getUrl(String key) {

        // 设置URL过期时间为10年 3600l* 1000*24*365*10



        Date expiration = new Date(System.currentTimeMillis() + 3600L * 1000 * 24 * 365 * 10);

        // 生成URL
        OSSClient ossClient =new OSSClient(endpoint, accessKeyId, accessKeySecret);

        URL url = ossClient.generatePresignedUrl(bucketName, key, expiration);

        if (url != null) {

            return url.toString();

        }

        return null;

    }


    public static void main(String[] args) throws Exception{

        uploadFile("F:\\guanghe-api\\src\\main\\webapp\\static\\img\\A-广和投资-官网首页Banner.png", "guangheimage", "image1/head.jpg");

    }
}
