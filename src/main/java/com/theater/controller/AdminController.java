package com.theater.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.google.gson.JsonObject;
import com.theater.domain.MovieVO;
import com.theater.service.MovieService;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/adm/*")
@AllArgsConstructor
@Log4j
public class AdminController {

  @GetMapping("/admin")
  public void admin() {
  }
  
  /* Member */
  @GetMapping("/adminMemberList.do")
  public String adminMemberList() {
    
    return "adm/adminMember/adminMemberList";
    
  }
  
  @GetMapping("/adminMemberInsert.do")
  public String adminMemberInsert() {
    
    return "adm/adminMember/adminMemberInsert";
    
  }
  
  /* Movie */
  
  private String getFolder() {
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
    Date date = new Date();
    String str = sdf.format(date);
    return str.replace("-", File.separator);
  }
  
  
  @Setter(onMethod_=@Autowired )
  public MovieService MovieService;
  
  @GetMapping("/adminMovieInsert.do")
  public String adminMovieInsert() {
    
    return "adm/adminMovie/adminMovieInsert";
  }
  
  @PostMapping(value="/adminMovieInsertPro.do", produces = "application/json; charset=utf8")
  public String adminMovieInsertPro(MovieVO mvo, @RequestParam("uploadFile01") MultipartFile uploadFile) {
     
       JsonObject jsonObject = new JsonObject();
       
       String uploadFolder="c:\\upload";
       log.info("file name : "+uploadFile.getOriginalFilename());
       
       String uploadFileName = uploadFile.getOriginalFilename();
       //IE
       uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("//")+1);
       log.info("only file name : "+uploadFileName);
       
       UUID uuid = UUID.randomUUID();
       
       uploadFileName = uuid.toString()+"_"+uploadFileName;
       
       File uploadPath = new File(uploadFolder, getFolder());
       
       if(uploadPath.exists() == false) {
          uploadPath.mkdirs();
       }
       File savefile = new File(uploadPath,uploadFileName);
       String saveUrl = uploadFileName.toString();
       log.info(saveUrl);
       
       try {
         uploadFile.transferTo(savefile);
          uploadFileName = (savefile.toString().substring(10));
          jsonObject.addProperty("url", "/upload/"+uploadFileName);
          jsonObject.addProperty("responseCode", "success");
          mvo.setPoster(uploadFileName);
          log.info(uploadFileName);

       }catch(Exception e) {
          e.printStackTrace();
          jsonObject.addProperty("responseCode", "error");
       }
       
       
       

      
       
       String upload = jsonObject.toString();
       log.info(upload);

       MovieService.MovieInsertPro(mvo);
       
       
       return "redirect:/adm/adminMovieInsert.do";
         }
  
  
  public void MultiUpload(MultipartHttpServletRequest mtfRequest) {
    List<MultipartFile> fileList = mtfRequest.getFiles("steelcut");
    String src = mtfRequest.getParameter("src");
    System.out.println("src value : " + src);

    String path = "C:\\upload\\";

    for (MultipartFile mf : fileList) {
        String originFileName = mf.getOriginalFilename(); // 원본 파일 명
        long fileSize = mf.getSize(); // 파일 사이즈

        System.out.println("originFileName : " + originFileName);
        System.out.println("fileSize : " + fileSize);

        String safeFile = path + System.currentTimeMillis() + originFileName;
        try {
            mf.transferTo(new File(safeFile));
        } catch (IllegalStateException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        
    }
    
    
    
  }//multipart
  
  /* Theater */
  
  
  /* Ticketing */
  
  
  /* Board*/
  
  /* Utility */
  @GetMapping("/adminCodeList.do")
  public String codeList() {
    
    return "adm/adminUtility/adminCodeList";
  }
}
