package com.theater.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.theater.domain.MemberVO;
import com.theater.service.MembersService;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@AllArgsConstructor
@RequestMapping("/mypage/*")
@Log4j
public class MypageController {

@Setter(onMethod_=@Autowired)
private MembersService mservice;

  @GetMapping("/mypage.do")
  public void mypage() {

  }
  
  @GetMapping("/myreser.do")
  public void myreser() {

  }
  
  @GetMapping("/mycash.do")
  public void mycash() {

  }
  
  @GetMapping("/mypass.do")
  public void mypass() {

  }
  
  @GetMapping("/mypass2.do")
  public void mypass2() {

  }
  
  @PostMapping("/mypasspro.do")
  public String mypasspro(MemberVO mvo, RedirectAttributes rdat) {

    return "redirect:/";
  }
  
  @GetMapping("/memberUp")
  public String memberUp(HttpServletRequest request, Model model) throws Exception {
     HttpSession session = request.getSession();
     String userid = (String) session.getAttribute("userid");
     log.info("userid : " + userid);
     MemberVO mvo = mservice.selectMember(userid);
     log.info("member Data : " + mvo);
     model.addAttribute("member", mvo);
     return "/mypage/mypage";
  }
  
  /*천규형...*/
  @PostMapping("/memberUpdate.do")
  public String memberUpdate(HttpServletRequest request, MemberVO mvo){
     log.info("============== VO : " + mvo);
     mservice.memberUpdate(mvo);
     HttpSession session = request.getSession();
     session.setAttribute("userid", mvo.getUserid());
     
      return "redirect:/mypage/뭐임";
  }


}
