package com.theater.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.theater.domain.Criteria;
import com.theater.domain.NoticeVO;
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
  private NoticeService nService;
  
  
  @GetMapping("/notice.do")
  public void notice(Criteria cri, Model model) {
    model.addAttribute("nlist", nService.getNoticeList(cri));
//전체조회값
    int total= nService.getTotal(cri);
    model.addAttribute("pageMaker",new PageVO(cri, total));
  }

//Common/ admin.user 공통이름
  @GetMapping("/noticeView.do")
  public void adminBoardView(@RequestParam("nt_cd")int nt_cd,Model model) {
    nService.getViewCount(nt_cd);
    model.addAttribute("nview",nService.getAdminBoardView(nt_cd));
    model.addAttribute("next",nService.nextPage(nt_cd));
    model.addAttribute("prev",nService.prevPage(nt_cd));
  }
  

}//class
