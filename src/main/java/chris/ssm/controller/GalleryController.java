package chris.ssm.controller;

import chris.ssm.model.Orderlist;
import chris.ssm.model.Picture;
import chris.ssm.model.Result;
import chris.ssm.model.User;
import chris.ssm.service.GalleryService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.List;

/**
 * Created by Chris on 2017/8/22
 * 4654
 */
@Controller
public class GalleryController {
    private Logger log = Logger.getLogger(GalleryController.class);
    @Resource
    private GalleryService galleryService ;
    @RequestMapping("/pictureShow")
    public String pictureShow(HttpSession session, Model model ){
        //根据userid 找到所有的订单 0代表未完成支付的订单
        User user = (User) session.getAttribute("user");
        List<Picture> pictureList=null;
        try {
            pictureList = galleryService.findByUserid(user.getId());
        }catch (Exception e){
            log.info(e.getMessage());
        }


        model.addAttribute("pictureList",pictureList);
        return "gallery";
    }

    @RequestMapping("/delPicture")
    public String delPicture(HttpSession session, Model model ,Long pid){
        //根据userid 找到所有的订单 0代表未完成支付的订单
        List<Picture> pictureList=null;
        try {
              galleryService.deleteByid(pid);
        }catch (Exception e){
            log.info(e.getMessage());
        }

        return "redirect:pictureShow";
    }


    @RequestMapping("/uploadPicture")
    public Result uploadPicture(HttpSession session, HttpServletRequest req,Model model , Long pid, MultipartFile file,String rename){
        boolean isSuccess=false;
        Result result =new Result();
        String realPath=null;
        if(file.isEmpty()){
            log.debug("文件为空");
            result.setCode(10);
            result.setMsg("文件为空");
            return result;
        }

        try {
            realPath=req.getServletContext().getRealPath("/assets/images/gallery");
                    System.out.println(realPath);
            //验证磁盘地址是否存在
            File folderPath = new File(realPath);
            if(!folderPath.exists()){
                isSuccess= folderPath.mkdir();  //建一个文件夹
            }

            //保存文件
            file.transferTo(new File(realPath,file.getOriginalFilename()));

            //获取文件保存路径
            File file2 = new File(folderPath.toString(), file.getOriginalFilename());

            //是否修改文件名
            if(rename.length() <= 0){
                isSuccess=true;
            }else{
                isSuccess = file2.renameTo(new File(folderPath,rename));
            }
            result.setCode(1000);
            result.setMsg("文件上传成功");
        } catch (IOException e) {
            result.setCode(10);
            result.setMsg("文件上传失败");
            e.printStackTrace();
        }
        //保存进入数据库
        Picture p =new Picture();
        p.setType(1);
        p.setUrl(realPath+"/"+rename);
        User user = (User) session.getAttribute("user");
        p.setUserid(user.getId());
        try {
            galleryService.insert(p);
        }catch (Exception e){
            log.info("插入数据失败");
        }



        return result;
    }



}
