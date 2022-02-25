package com.theater.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.theater.domain.Criteria;
import com.theater.domain.PageVO;
import com.theater.service.EventService;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/event/*")
@AllArgsConstructor
@Log4j
public class EventController {


  @Setter(onMethod_=@Autowired)
  private EventService eService;
  
  @GetMapping("/event.do")
  public void event(Criteria cri, Model model) {
    model.addAttribute("elist",eService.getEventList(cri));
//전체조회값
  int total= eService.getTotal(cri);
  model.addAttribute("pageMaker",new PageVO(cri, total));
  }

//Common/ admin.user 공통이름
  @GetMapping("/eventView.do")
  public void admineventView(@RequestParam("event_cd")int event_cd,Model model) {
    eService.getViewCount(event_cd);
    model.addAttribute("eview",eService.getAdminBoardView(event_cd));
    model.addAttribute("next",eService.nextPage(event_cd));
    model.addAttribute("prev",eService.prevPage(event_cd));
  }
  

}//class
