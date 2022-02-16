package com.theater.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.theater.domain.Criteria;
import com.theater.domain.PageVO;
import com.theater.service.NoticeService;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/notice/*")
@AllArgsConstructor
@Log4j
public class NoticeController {
  
  @Setter(onMethod_=@Autowired)
  private NoticeService Nservice;

  
  @GetMapping("/notice.do")
  public void notice(Criteria cri, Model model) {
    PageVO pageVO = new PageVO(cri, Nservice.getTotal(cri));
    model.addAttribute("pageMaker", pageVO);
    model.addAttribute("list", Nservice.getList(cri));
    
  }  @GetMapping("/noticeview.do")
  public void noticeview(@RequestParam("nt_cd") int nt_cd,@ModelAttribute("cri") Criteria cri, Model model) {
    model.addAttribute("view",Nservice.read(nt_cd));
  //page
      model.addAttribute("nextVO",Nservice.nextPage(nt_cd));
      model.addAttribute("preVO",Nservice.prevPage(nt_cd));
  }
  
  @GetMapping("/noticewrite.do")
  public void noticewrite() {
    
  }

}//class
