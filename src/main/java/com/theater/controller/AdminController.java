package com.theater.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.google.gson.JsonObject;
import com.theater.domain.ActorsVO;
import com.theater.domain.Criteria;
import com.theater.domain.DirectorsVO;
import com.theater.domain.GenresVO;
import com.theater.domain.MovieVO;
import com.theater.domain.NationVO;
import com.theater.service.EventService;
import com.theater.service.MovieService;
import com.theater.service.NoticeService;
import com.theater.service.UtilityService;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/adm/*")
@AllArgsConstructor
@Log4j
public class AdminController {

  @Setter(onMethod_=@Autowired )
  public UtilityService uService;
  
  @GetMapping("/admin")
  public void admin() {
  }
  
  @GetMapping("/adminLogin")
  public void adminLogin() {
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
  
  @GetMapping("/adminMovieSelect.do" )
  public String adminMovieSelect(Model model,MovieVO mvo) {
    model.addAttribute("list",MovieService.MovieSelect());
    return "adm/adminMovie/adminMovieSelect";
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
  @Setter(onMethod_=@Autowired )
  public EventService Eservice;
  
  @GetMapping("/adminEvent.do")
  public String adminEvent() {
    return "adm/adminEvent/adminEvent";
  }
  
  @GetMapping("/adminEventview.do")
  public String adminEventview() {
    return "adm/adminEvent/adminEventview";
  }
  
  
  @Setter(onMethod_=@Autowired )
  public NoticeService Nservice;
  
  @GetMapping("/adminNotice.do")
  public String adminNotice() {
    return "adm/adminNotice/adminNotice";
  }
  
  @GetMapping("/adminNoticeview.do")
  public String adminNoticeview() {
    return "adm/adminNotice/adminNoticeview";
  }
  
  @GetMapping("/adminWrite.do")
  public String adminWrite() {
    return "/adm/adminNotice/adminNoticewrite";
  }
  
  
  /* Utility */
  @GetMapping("/adminCodeList.do")
  public String codeList(Model model) {
    
    model.addAttribute("actors", uService.getActorsList());
    model.addAttribute("directors", uService.getDitrectorsList());
    model.addAttribute("nations", uService.getNationsList());
    model.addAttribute("genres",  uService.getGenresList());
    return "adm/adminUtility/adminCodeList";
  }
  
  @GetMapping("/adminActorsView.do")
  public String actorsView(Model model, @RequestParam("a_cd") int a_cd) {
    log.info("code"+a_cd);
    
    return "adm/adminUtility/adminCodeList";
  }

  /* insert */
  @GetMapping("/actorsInsert.do")
  public void actorsInsert(ActorsVO avo) {
    uService.actorsInsert(avo);
    
  }
  
  @GetMapping("/directorsInsert.do")
  public void directorsInsert(DirectorsVO dvo) {
    uService.directorsInsert(dvo);
    
  }
  
  @GetMapping("/nationInsert.do")
  public void nationInsert(NationVO nvo) {
    uService.nationInsert(nvo);
    
  }
  
  @GetMapping("/genresInsert.do")
  public void genresInsert(GenresVO gvo) {
    uService.genresInsert(gvo);
    
  }
  /* end insert */
  
  
}
