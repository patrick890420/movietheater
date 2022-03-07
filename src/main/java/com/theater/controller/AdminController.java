package com.theater.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.theater.domain.ActorsVO;
import com.theater.domain.AdminChartVO;
import com.theater.domain.Criteria;
import com.theater.domain.DirectorsVO;
import com.theater.domain.EventVO;
import com.theater.domain.FilmsVO;
import com.theater.domain.GenresVO;
import com.theater.domain.MemberVO;
import com.theater.domain.MovieInfoVO;
import com.theater.domain.MovieVO;
import com.theater.domain.NationVO;
import com.theater.domain.NoticeVO;
import com.theater.domain.ScheduleVO;
import com.theater.domain.ScreensVO;
import com.theater.domain.SeatsVO;
import com.theater.domain.TheatersVO;
import com.theater.service.EventService;
import com.theater.service.MembersService;
import com.theater.service.MovieService;
import com.theater.service.NoticeService;
import com.theater.service.TheaterService;
import com.theater.service.TicketService;
import com.theater.service.UtilityService;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/adm/*")
@AllArgsConstructor
@Log4j
public class AdminController {


//Service
  @Setter(onMethod_=@Autowired )
  public UtilityService uService;

/* Board-> Event*/
  @Setter(onMethod_=@Autowired )
  public EventService eService;

/*Board-> Notice*/
  @Setter(onMethod_=@Autowired )
  public NoticeService nService;
  
  @Setter(onMethod_=@Autowired )
  public MembersService MembersService;

  @Setter(onMethod_=@Autowired )
  public TicketService tkService;

  @GetMapping("/admin")
  public void admin(Model model) {
    model.addAttribute("info",uService.getAdminInfo());
  }
  
  @GetMapping("/adminLogin")
  public void adminLogin() {
  }
  
  /* Member */
  
  @GetMapping("/adminMemberList.do")
  public String adminMemberList(Model model, MemberVO memvo) { //@RequestParam("userid")String userid
    //List<MemberVO> memlist = MembersService.memberSelect();
    model.addAttribute("memlist", MembersService.memberSelect());
    return "adm/adminMember/adminMemberList";
  }
  
  /*강제탈퇴 처리*/
  @GetMapping("/adminDelete.do")
  public String adminDelete(String userid) {
    
    MembersService.adminDelete(userid);
    
    return "adm/admin"; //야매로 여기로 가게 함 ㅎ 왜냐하면 삭제 후 멤버 리스트가 0개로 뜨기 때문
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
  @GetMapping("/adminMovieFilmUpdate.do")
  
  public String adminMovieFilmUpdate(Model model,@RequestParam("m_cd")int m_cd,@RequestParam("film_status")String film_status)  {

    model.addAttribute("films",movieService.movieFilmsSelect2(m_cd));
    

    movieService.moviefilmsUpdate(m_cd,film_status);
    
    
    return "redirect:/adm/adminMovieSelect.do";
  }
  
  @GetMapping("/adminMovieInfoInsert.do")
  public String adminMovieInfoInsert(MovieInfoVO ivo,Model model, @RequestParam("m_cd")int m_cd){
    
    model.addAttribute("m_cd", m_cd);
    model.addAttribute("actors", uService.getActorsList());
    model.addAttribute("directors", uService.getDitrectorsList());
    model.addAttribute("nations", uService.getNationsList());
    model.addAttribute("genres",  uService.getGenresList());
    model.addAttribute("films",movieService.movieFilmsSelect2(m_cd));
    log.info(movieService.movieFilmsSelect2(m_cd));
    
    return "adm/adminMovie/adminMovieInfoInsert";
  }
  
  @GetMapping("/adminMovieView.do")
  public String adminMovieView(@RequestParam("m_cd") int m_cd,Model model) {
    model.addAttribute("view",movieService.adminMovieSelect(m_cd));
    model.addAttribute("cut",movieService.movieStillcutSelect(m_cd));
    model.addAttribute("film",movieService.movieFilmsSelect2(m_cd));

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

    String path = "C:\\upload\\";
    
    ArrayList<String> fileNameArr = new ArrayList<String>();
    for (MultipartFile mf : fileList) {
      String originFileName = mf.getOriginalFilename(); // 원본 파일 명
      long fileSize = mf.getSize(); // 파일 사이즈
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
  
  @GetMapping("/adminTheaterList.do")
  public String adminTheaterList(Model model, TheatersVO tvo) {
    model.addAttribute("athlist",TheaterService.theaterlist());
    return "adm/adminTheater/adminTheaterList";
  }
  //수정중
  @GetMapping("/adminScreenInfo.do")
  public String adminScreenInfo(Model model, @RequestParam("t_cd")int t_cd){
    
    model.addAttribute("t_slist", TheaterService.adminScreenInfo(t_cd));
    System.out.println(TheaterService.adminScreenInfo(t_cd));
    return "adm/adminTheater/adminScreenInfo";
  }
  //수정부분끝
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
    public String adminTheaterInsert2(Model model,ScreensVO svo) {
    model.addAttribute("thcode", TheaterService.theatercode(svo));

    return "adm/adminTheater/adminTheaterInsert2";
  }
  @PostMapping("/adminteatherInsertPro2.do")
  public String adminteatherInsertPro2(ScreensVO svo) {
    TheaterService.theaterInsertPro2(svo);
    
    return "redirect:/adm/adminTheaterInsert3.do";
    }
  @GetMapping("/adminTheaterInsert3.do")
  public String adminTheaterInsert3(Model model,SeatsVO sevo) {
    model.addAttribute("sccode", TheaterService.screencode(sevo));
  
    return "adm/adminTheater/adminTheaterInsert3";
}
  @PostMapping("/adminteatherInsertPro3.do")
  public String adminteatherInsertPro3(SeatsVO sevo) {
    TheaterService.theaterInsertPro3(sevo);
    
    return "redirect:/adm/adminTheaterInsert.do";
    }
  
  @GetMapping("/adminSchedule.do") 
  public String  admintheatherSchedule(Model model,@RequestParam("screen_cd") int screen_cd) {
    model.addAttribute("scheduleList", TheaterService.adminScheduleList(screen_cd));
    model.addAttribute("mlist",TheaterService.adminScheduleSelect());
    model.addAttribute("screen_cd",screen_cd);
    return "adm/adminTheater/adminSchedule";
  }
  
  @GetMapping("/adminScheduleInsertPro.do")
  public String adminScheduleInsertPro(ScheduleVO scdvo) {
    String start_time = scdvo.getStart_time().replace("T", " ");
    scdvo.setStart_time(start_time);
    log.info(scdvo.getStart_time());
    TheaterService.scheduleInsert(scdvo);
    
    return "redirect:/adm/adminTheaterInsert.do";
    }
  
  
  /* Ticketing */
  @GetMapping("/adminTicketing.do")
  public String adminTicketing(Model model) {
    model.addAttribute("ticket",tkService.getTkList());
    
    return "/adm/adminTicket/adminTicket";
  }
  @GetMapping("/adminPayment.do")
  public String adminPayment(Model model) {
    model.addAttribute("payment",tkService.getPayList());
    
    return "/adm/adminTicket/adminPayment";
  }
  
  


  /*adminBoard*/
  @GetMapping("/adminBoardWrite.do")
  public String adminBoardWrite() {
    return "/adm/adminBoard/adminBoardWrite";
  }

  @PostMapping("/adminBoardWritePro.do")
  public String adminBoardWritePro(@RequestParam("choice")String choice, NoticeVO nvo, EventVO evo) {
    if(choice.equals("N")) {
      nService.noticeInsert(nvo);
      return "redirect:/adm/adminNotice.do";
    }else if(choice.equals("E")) {
      eService.eventInsert(evo);
      return "redirect:/adm/adminEvent.do";
    }
    return "redirect:/adm/admin.do";
  }
  
  @PostMapping(value="/boardImage.do", produces = "application/json; charset=utf8")
  public @ResponseBody String boardImage(@RequestParam("file") MultipartFile file) {

    JsonObject jsonObject = new JsonObject();
    String uploadFolder="c:\\upload";
//    log.info("file name : "+file.getOriginalFilename());
    String uploadFileName = file.getOriginalFilename();

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
//     log.info(saveUrl);
     
     try {
        file.transferTo(savefile);
        uploadFileName = (savefile.toString().substring(10));
        jsonObject.addProperty("url", "/upload/"+uploadFileName);
        jsonObject.addProperty("responseCode", "success");
        log.info(uploadFileName);

     }catch(Exception e) {
        e.printStackTrace();
        jsonObject.addProperty("responseCode", "error");
     }
     
     String upload = jsonObject.toString();
//     log.info(upload);
     return upload;
  }
  
  @GetMapping("/adminBoardView.do")
  public String adminBoardView(@RequestParam("nt_cd")int nt_cd,@RequestParam("event_cd") int event_cd, Model model) {
     
    if(event_cd == 0) {
      model.addAttribute("nview",nService.getAdminBoardView(nt_cd));
      model.addAttribute("next",nService.nextPage(nt_cd));
      model.addAttribute("prev",nService.prevPage(nt_cd));
      return "adm/adminNotice/adminNoticeView";
    }else {
      model.addAttribute("eview",eService.getAdminBoardView(event_cd));
      model.addAttribute("next",eService.nextPage(event_cd));
      model.addAttribute("prev",eService.prevPage(event_cd));
      return "adm/adminEvent/adminEventView";
    }
  }

 @GetMapping("/adminNoticeDelete.do")
  public String Noticedelete(@RequestParam("nt_cd") int nt_cd) {
    nService.NoticeDelete(nt_cd);
    return "redirect:/adm/adminNotice.do";
 }

 
/* Board-> Event*/
  
  @GetMapping("/adminEvent.do")
  public String adminEvent(Criteria cri, Model model) {
    model.addAttribute("elist",eService.getEventList(cri));
    return "adm/adminEvent/adminEvent";
  }
  
  @GetMapping("/adminEventView.do")
  public String getAdminBoardView(@RequestParam("event_cd")int event_cd, Model model) {
    model.addAttribute("eview",eService.getAdminBoardView(event_cd));
    model.addAttribute("next",eService.nextPage(event_cd));
    model.addAttribute("prev",eService.prevPage(event_cd));
    return "adm/adminBoard/adminBoardView";
  }
  
  @GetMapping("/adminEventModify.do")
  public String adminEventModify(@RequestParam("event_cd")int event_cd,Model model) {
    model.addAttribute("eview",eService.getAdminBoardView(event_cd));
    return "adm/adminEvent/adminEventModify";
  }

  
  @GetMapping("/adminEventModifyPro.do")
  public String adminEventModifyPro(EventVO evo) {
    eService.modify(evo);
    return "redirect:/adm/adminEvent.do";
  }
  
  @GetMapping("/adminEventDelete.do")
  public String EventDelete(@RequestParam("event_cd") int event_cd) {
    eService.EventDelete(event_cd);
    return "redirect:/adm/adminEvent.do";
 }

  
/*Board-> Notice*/

  @GetMapping("/adminNotice.do")
  public String adminNotice(Criteria cri,Model model) {
    model.addAttribute("nlist",nService.getNoticeList(cri));
    return "adm/adminNotice/adminNotice";
  }
  
  @GetMapping("/adminNoticeview.do")
  public String adminNoticeview() {
    return "adm/adminNotice/adminNoticeview";
  }
  
  @GetMapping("/adminNoticeModify.do")
  public String adminNoticeModify(@RequestParam("nt_cd")int nt_cd,Model model) {
    model.addAttribute("nview",nService.getAdminBoardView(nt_cd));
    return "adm/adminNotice/adminNoticeModify";
  }

  
  @GetMapping("/adminNoticeModifyPro.do")
  public String adminNoticeModifyPro(NoticeVO nvo) {
    nService.modify(nvo);
    return "redirect:/adm/adminNotice.do";
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
      avo.setA_img(uploadFileName);
//      log.info(uploadFileName);
    }catch(Exception e) {
       e.printStackTrace();
       jsonObject.addProperty("responseCode", "error");
    }
    
    String upload = jsonObject.toString();
//    log.info(upload);

    uService.actorsInsert(avo);
    return "redirect:/adm/adminCodeList.do";
  }

  @PostMapping(value="/directorsInsert.do", produces = "application/json; charset=utf8")
  public String directorsInsert(Model model, DirectorsVO dvo, @RequestParam("uploadFile") MultipartFile uploadFile) {
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
      dvo.setD_img(uploadFileName);
//      log.info(uploadFileName);
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
  
  /* admin chart */
  @GetMapping("/chart1.do")
  public @ResponseBody String chart1(Model model) {
    
    Gson gson = new Gson();
    AdminChartVO result = uService.getChart1();
    return  gson.toJson(result);
  }
  
  @GetMapping("/chart2.do")
  public @ResponseBody String chart2(Model model) {
    
    Gson gson = new Gson();
    List<AdminChartVO> result = uService.getChart2();
    return  gson.toJson(result);
  }
  
  @GetMapping("/chart3.do")
  public @ResponseBody String chart3(Model model) {
    
    Gson gson = new Gson();
    List<AdminChartVO> result = uService.getChart3();
    return  gson.toJson(result);
  }
  
}