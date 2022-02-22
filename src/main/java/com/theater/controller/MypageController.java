package com.theater.controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
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
  
  //@Secured({"ROLE_ADMIN","ROLE_USER"}) /* 접근권한 제어 1 */
  @PreAuthorize("hasAnyRole('ROLE_ADMIN','ROLE_USER')") /* 접근권한 제어 2 */
  @GetMapping("/memberUp")
  public String memberUp(HttpServletRequest request, Model model, Principal principal) throws Exception {
     String userid = principal.getName();
     log.info("userid : " + userid);
     MemberVO mvo = mservice.selectMember(userid);
     log.info("member Data : " + mvo);
     model.addAttribute("member", mvo);
     return "/mypage/mypage";
  }
  
  @PostMapping("/memberUpdate")
  public String memberUpdate(MemberVO mvo){
     mservice.memberUpdate(mvo);
     log.info(mvo);
      return "redirect:/";
  }
  
  /*return "redirect:/주소"는 해당 주소로 URL 요청을 다시 하는 것이고,
return "view"는 단순히 지정한 view 페이지를 보여주는 것이다.
redirect는 response.sendRedirect처럼 화면 넘기기만 가능하고, 데이터를 전달하지는 못한다.
redirect 시 데이터를 유지하려면 RedirectAttributes의 addFlashAttribute("key", data)를 사용해 데이터를 저장해야 한다.
라고 하는데 그래서 redirect:/mypage/mypage를 하면 값을 못 가져오는 것인가요 ㅇㅅㅇ? 아니면 세션이 없어서?
*/
  



}
