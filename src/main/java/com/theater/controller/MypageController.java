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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.theater.domain.MemberVO;
import com.theater.service.MembersService;
import com.theater.service.PaymentsService;

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

@Setter(onMethod_=@Autowired)
private PaymentsService pService;


  @GetMapping("/mypage.do")
  public void mypage() {

  }
  
  @GetMapping("/myreser.do")
  public void myreser() {

  }

  @GetMapping("/mycash.do")
  public void mycash(Model model) {
    model.addAttribute("cashList",pService.getCashList());
  }
  
  //비밀번호 수정 페이지
  @GetMapping("/mypass.do")
  public void mypass() {

  }
  
//비밀번호 체크
  @GetMapping("/pwChk.do")
  public @ResponseBody int pwChk(@RequestParam("userpw") String userpw) {
    int result = mservice.pwChk(userpw);
    return result;
  }
  
  //비밀번호 수정 처리
  @PostMapping("/mypasspro.do")
  public String mypasspro(MemberVO mvo) { //RedirectAttributes rdat
    //RedirectAttributes 폼 형식의 문서를 작성 후, 서버로 보내면(POST 방식) 곧이어 다른 페이지로 리다이렉트 한다.
    //문제는 이러한 리다이렉트 방식이 GET 방식​ 이라 데이터 전송에는 적절하지 않다 //-----하지만 POST 방식은 아니다.
    mservice.mypasspro(mvo);

    return "redirect:/";
  }
  
  //회원정보 수정 페이지
  //@Secured({"ROLE_ADMIN","ROLE_USER"}) /* 접근권한 제어 1 */
  @PreAuthorize("hasAnyRole('ROLE_ADMIN','ROLE_USER')") /* 접근권한 제어 2 */
  @GetMapping("/memberUp.do")
  public String memberUp(HttpServletRequest request, Model model, Principal principal) throws Exception {
     String userid = principal.getName();
     log.info("userid : " + userid);
     MemberVO mvo = mservice.selectMember(userid);
     log.info("member Data : " + mvo);
     model.addAttribute("member", mvo);
     return "/mypage/mypage";
  }
  //회원정보 수정 처리
  @PostMapping("/memberUpdate")
  public String memberUpdate(MemberVO mvo){
     mservice.memberUpdate(mvo);
     log.info(mvo);
      return "redirect:/";  
  }
  

  
  
  



}
