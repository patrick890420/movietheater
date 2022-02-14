package com.theater.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
  private NoticeService service;
  
  @GetMapping("/notice.do")
  public void notice(Criteria cri, Model model) {
    
    model.addAttribute("list", service.getList(cri));
//  래코드 값

//    int total= service.getTotalcount(cri);
//    model.addAttribute("pageMaker",new PageVO(cri,total));
  }
  
  @GetMapping("/noticeview.do")
  public void eventview() {
    
  }

}//class

