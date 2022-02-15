package com.theater.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.theater.domain.MovieVO;
import com.theater.service.EventService;
import com.theater.service.MovieService;
import com.theater.service.NoticeService;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Controller
@RequestMapping("/adm/*")
@AllArgsConstructor
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
  
  @Setter(onMethod_=@Autowired )
  public MovieService MovieService;
  
  @GetMapping("/adminMovieInsert.do")
  public String adminMovieInsert() {
    
    return "adm/adminMovie/adminMovieInsert";
  }
  
  @PostMapping("/adminMovieInsertPro.do")
  public String adminMovieInsertPro(MovieVO mvo,RedirectAttributes attr) {
    MovieService.MovieInsertPro(mvo);
    return "redirect:/adm/adminMovieInsert.do";
  }
  
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
  
  @GetMapping("/adminEventwrite.do")
  public void adminEventwrite() {
    
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
  
  
  /* Utility */
  @GetMapping("/adminCodeList.do")
  public String codeList() {
    
    return "adm/adminUtility/adminCodeList";
  }
}
