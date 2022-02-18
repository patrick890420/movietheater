package com.theater.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
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
  private NoticeService nservice;

  
  @GetMapping("/notice.do")
  public void notice(Criteria cri, Model model) {
    model.addAttribute("list", nservice.getAdminList(cri));
//전체조회값
    int total= nservice.getTotal(cri);
    model.addAttribute("pageMaker",new PageVO(cri, total));
    
  }
  @GetMapping("/adminBoardView.do")
  public String adminBoardView(@RequestParam("nt_cd")int nt_cd,Model model) {
    model.addAttribute("view",nservice.getAdminBoardView(nt_cd));
    return "adm/adminBoard/adminBoardView";
  }


}//class
