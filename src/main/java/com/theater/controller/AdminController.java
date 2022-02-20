package com.theater.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.JsonObject;
import com.theater.domain.ActorsVO;
import com.theater.domain.Criteria;
import com.theater.domain.DirectorsVO;
import com.theater.domain.EventVO;
import com.theater.domain.GenresVO;
import com.theater.domain.MovieInfoVO;
import com.theater.domain.MovieVO;
import com.theater.domain.NationVO;
import com.theater.domain.NoticeVO;
import com.theater.domain.TheatersVO;
import com.theater.service.EventService;
import com.theater.service.MovieService;
import com.theater.service.NoticeService;
import com.theater.service.TheaterService;
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
  public MovieService movieService;
  
  @GetMapping("/adminMovieInsert.do")
  public String adminMovieInsert() {
    
    return "adm/adminMovie/adminMovieInsert";
  }
  
  @GetMapping("/adminMovieSelect.do" )
  public String adminMovieSelect(Model model,MovieVO mvo) {
    model.addAttribute("list",movieService.movieSelect());
    return "adm/adminMovie/adminMovieSelect";
  }
  
  @GetMapping("/adminMovieInfoInsert.do")
  public String adminMovieInfoInsert(MovieInfoVO ivo,Model model, @RequestParam("m_cd")int m_cd){
    
    model.addAttribute("m_cd", m_cd);
    model.addAttribute("actors", uService.getActorsList());
    model.addAttribute("directors", uService.getDitrectorsList());
    model.addAttribute("nations", uService.getNationsList());
    model.addAttribute("genres",  uService.getGenresList());
    
    return "adm/adminMovie/adminMovieInfoInsert";
  }
  
  @GetMapping("/adminMovieView.do")
  public String adminMovieView(@RequestParam("m_cd") int m_cd,Model model) {
    model.addAttribute("view",movieService.adminMovieSelect(m_cd));
    model.addAttribute("cut",movieService.movieStillcutSelect(m_cd));

    
    return "adm/adminMovie/adminMovieView";
  }
  
  @PostMapping(value="/adminMovieInsertPro.do", produces = "application/json; charset=utf8")
  public String adminMovieInsertPro(MovieVO mvo, @RequestParam("uploadFile01") MultipartFile uploadFile) {
    JsonObject jsonObject = new JsonObject();
    
    String uploadFolder="c:\\upload";
//    log.info("file name : "+uploadFile.getOriginalFilename());
    
    String uploadFileName = uploadFile.getOriginalFilename();
    //IE
    uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("//")+1);
//    log.info("only file name : "+uploadFileName);
    
    UUID uuid = UUID.randomUUID();
    
    uploadFileName = uuid.toString()+"_"+uploadFileName;
    
    File uploadPath = new File(uploadFolder, getFolder());
    
    if(uploadPath.exists() == false) {
       uploadPath.mkdirs();
    }
    File savefile = new File(uploadPath,uploadFileName);
    String saveUrl = uploadFileName.toString();
//    log.info(saveUrl);
    
    try {
      uploadFile.transferTo(savefile);
      uploadFileName = (savefile.toString().substring(10));
      jsonObject.addProperty("url", "/upload/"+uploadFileName);
      jsonObject.addProperty("responseCode", "success");
      mvo.setPoster(uploadFileName);
//      log.info(uploadFileName);
    }catch(Exception e) {
       e.printStackTrace();
       jsonObject.addProperty("responseCode", "error");
    }
    
    String upload = jsonObject.toString();
//    log.info(upload);

    movieService.movieInsertPro(mvo);
    
    return "redirect:/adm/adminMovieInsert.do";
    }
  
  @PostMapping(value="/adminMovieInfoInsertPro.do")
  public String movieInfoInsertPro(MultipartHttpServletRequest mtfRequest,MovieInfoVO ivo,MovieVO mvo,Model model) {
    List<MultipartFile> fileList = mtfRequest.getFiles("stillcut");
    String src = mtfRequest.getParameter("src");
    System.out.println("src value : " + src);

    String path = "C:\\upload\\";
    
    ArrayList<String> fileNameArr = new ArrayList<String>();
    for (MultipartFile mf : fileList) {
      String originFileName = mf.getOriginalFilename(); // 원본 파일 명
      long fileSize = mf.getSize(); // 파일 사이즈
//      System.out.println("originFileName : " + originFileName);
//      System.out.println("fileSize : " + fileSize);
      UUID uuid = UUID.randomUUID();
      String safeFile = uuid.toString()+originFileName;
      fileNameArr.add(safeFile.substring(safeFile.lastIndexOf("//")+1));
      try {
        mf.transferTo(new File(safeFile));
      } catch (IllegalStateException e) {
        e.printStackTrace();
      } catch (IOException e) {
        e.printStackTrace();
      }
        
    }
    ivo.setStill_img1(fileNameArr.get(0)); 
    ivo.setStill_img2(fileNameArr.get(1)); 
    ivo.setStill_img3(fileNameArr.get(2)); 
    ivo.setStill_img4(fileNameArr.get(3)); 
    
    movieService.movieInfoInsertPro(ivo);
    return "redirect:/adm/adminMovieSelect.do";
  }
  
// @GetMapping("/adminMovieDelete.do") 
//  public String adminMovieDelete(@RequestParam("m_cd") int m_cd) {
//    movieService.movieDelete(m_cd);
//   return "redirect:/adm/adminMovieSelect.do";
//  }
    
  
  
  /* Theater */
  @Setter(onMethod_=@Autowired )
  public TheaterService TheaterService;
  
  @GetMapping("/adminTheaterInsert.do")
  public String adminTheaterInsert() {
    
    return "adm/adminTheater/adminTheaterInsert";
  }
  @PostMapping("/adminteatherInsertPro.do")
  public String adminteatherInsertPro(TheatersVO tvo) {
    TheaterService.theaterInsertPro(tvo);
    
    return "redirect:/adm/adminTheaterInsert2.do";
    }
  @GetMapping("/adminTheaterInsert2.do")
  public String adminTheaterInsert2() {
    
    return "adm/adminTheater/adminTheaterInsert2";
  }
  /* Ticketing */
  @GetMapping("/adminTicketing.do")
  public String adminTicketing() {
    return "/adm/adminTicket/adminTicket";
<<<<<<< HEAD
=======
  }
  
/*Common(공용)* 안쓰는 거면 지워/
  @GetMapping("/adminWrite.do")
  public String adminWrite() {
    return "/adm/adminCommon/adminWrite";
>>>>>>> branch 'develop' of https://github.com/patrick890420/movietheater.git
  }
  

  /*adminBoard*/
  @GetMapping("/adminBoardWrite.do")
  public String adminBoardWrite() {
    return "/adm/adminBoard/adminBoardWrite";
  }

  @GetMapping("/adminBoardWritePro.do")
  public String adminBoardWritePro(@RequestParam("choice")String choice, NoticeVO nvo, EventVO evo) {
    if(choice.equals("N")) {
      nService.noticeInsert(nvo);
    }else if(choice.equals("E")) {
      eService.eventInsert(evo);
    }
    return "adm/adminNotice/adminNotice";
  }
  
  @GetMapping("/adminBoardView.do")
  public String adminBoardView(@RequestParam("nt_cd")int nt_cd,Model model) {
    model.addAttribute("view",nService.getAdminBoardView(nt_cd));
    model.addAttribute("next",nService.nextPage(nt_cd));
    model.addAttribute("prev",nService.prevPage(nt_cd));
    return "adm/adminBoard/adminBoardView";
  }
  
  @GetMapping("adminBoardModify.do")
  public String adminBoardModify(@RequestParam("nt_cd")int nt_cd,Model model) {
    model.addAttribute("view",nService.getAdminBoardView(nt_cd));
    return "adm/adminBoard/adminBoardModify";
  }
  
  @PostMapping("/adminBoardModifyPro.do")
  public String modify(NoticeVO notice, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
    if(nService.modify(notice)) {
      rttr.addFlashAttribute("result","success");
    }
    return "redirect:/notice/notice";
  }

 @GetMapping("/adminBoardDelete.do")
  public String delete(int nt_cd, RedirectAttributes rttr) {
    if(nService.delete(nt_cd)) {
      rttr.addFlashAttribute("result","success");
    }
    return "redirect:/notice/notice";
  }


/* Board-> Event*/
  @Setter(onMethod_=@Autowired )
  public EventService eService;

  
  @GetMapping("/adminEvent.do")
  public String adminEvent() {
    return "adm/adminEvent/adminEvent";
  }
  
  @GetMapping("/adminEventview.do")
  public String adminEventview() {
    return "adm/adminEvent/adminEventview";
  }
  
/*Board-> Notice*/
  @Setter(onMethod_=@Autowired )
  public NoticeService nService;

  
  @GetMapping("/adminNotice.do")
  public String adminNotice(Criteria cri,Model model) {
    model.addAttribute("list",nService.getNoticeList(cri));
    return "adm/adminNotice/adminNotice";
  }
  
  @GetMapping("/adminNoticeview.do")
  public String adminNoticeview() {
    return "adm/adminNotice/adminNoticeview";
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
  
  @PostMapping(value="/actorsInsert.do", produces = "application/json; charset=utf8")
  public String actorsInsert(Model model, ActorsVO avo, @RequestParam("uploadFile") MultipartFile uploadFile) {
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
      avo.setA_img(uploadFileName);
      log.info(uploadFileName);
    }catch(Exception e) {
       e.printStackTrace();
       jsonObject.addProperty("responseCode", "error");
    }
    
    String upload = jsonObject.toString();
    log.info(upload);

    uService.actorsInsert(avo);
    return "redirect:/adm/adminCodeList.do";
  }

  @PostMapping(value="/directorsInsert.do", produces = "application/json; charset=utf8")
  public String directorsInsert(Model model, DirectorsVO dvo, @RequestParam("uploadFile") MultipartFile uploadFile) {
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
      dvo.setD_img(uploadFileName);
      log.info(uploadFileName);
    }catch(Exception e) {
       e.printStackTrace();
       jsonObject.addProperty("responseCode", "error");
    }
    
    String upload = jsonObject.toString();

    uService.directorsInsert(dvo);
    return "redirect:/adm/adminCodeList.do";
  }
  @PostMapping("/nationInsert.do")
  public String nationsInsert(Model model, NationVO nvo) {
    uService.nationInsert(nvo);
    return "redirect:/adm/adminCodeList.do";
  }
  
  @PostMapping("/genresInsert.do")
  public String genresInsert(Model model, GenresVO gvo) {
    uService.genresInsert(gvo);
    return "redirect:/adm/adminCodeList.do";
  }
  
  @GetMapping("/actorsModify.do")
  public String actorsModify(Model model, ActorsVO avo) {
    uService.actorsModify(avo);
    return "redirect:/adm/adminCodeList.do";
  }
  
  @GetMapping("/directorsModify.do")
  public String directorsModify(Model model, DirectorsVO dvo) {
    uService.directorsModify(dvo);
    return "redirect:/adm/adminCodeList.do";
  }
  
  @GetMapping("/nationModify.do")
  public String nationModify(Model model, NationVO nvo) {
    uService.nationModify(nvo);
    return "redirect:/adm/adminCodeList.do";
  }
  
  @GetMapping("/genresModify.do")
  public String genresModify(Model model, GenresVO gvo) {
    uService.genresModify(gvo);
    return "redirect:/adm/adminCodeList.do";
  }
  
  @GetMapping("/actorsDelete.do")
  public String actorsDelete(Model model, @RequestParam("a_cd") String a_cd) {
    uService.actorsDelete(a_cd);
    return "redirect:/adm/adminCodeList.do";
  }
  @GetMapping("/directorsDelete.do")
  public String directorsDelete(Model model, @RequestParam("d_cd") String d_cd) {
    uService.directorsDelete(d_cd);
    return "redirect:/adm/adminCodeList.do";
  }
  @GetMapping("/nationDelete.do")
  public String nationDelete(Model model, @RequestParam("n_cd") String n_cd) {
    uService.nationDelete(n_cd);
    return "redirect:/adm/adminCodeList.do";
  }
  @GetMapping("/genresDelete.do")
  public String genresDelete(Model model, @RequestParam("g_cd") String g_cd) {
    uService.genresDelete(g_cd);
    return "redirect:/adm/adminCodeList.do";
  }
  
}