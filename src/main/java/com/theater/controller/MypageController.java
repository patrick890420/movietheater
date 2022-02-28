package com.theater.controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
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

@Setter(onMethod_ = @Autowired) /* pw암호화 해주는것 */
private PasswordEncoder pwEncoder;


  @GetMapping("/mypage.do")
  public void mypage() {

  }

  @GetMapping("/mycash.do")
  public void mycash(Model model) {
    model.addAttribute("cashList",pService.getCashList());
  }
  
  //비밀번호 수정 페이지
//  @PreAuthorize("hasAnyRole('ROLE_ADMIN','ROLE_USER')") //이거 맞는지 확인
  @GetMapping("/mypass.do")
  public void mypass() { // @RequestParam 정보를 주세요
    
    
  }
  

  //비밀번호 수정 처리
  @PostMapping("/mypasspro.do")
  public String mypasspro(Model model,MemberVO mvo,Principal principal) { //RedirectAttributes rdat
    //RedirectAttributes 폼 형식의 문서를 작성 후, 서버로 보내면(POST 방식) 곧이어 다른 페이지로 리다이렉트 한다.
    //문제는 이러한 리다이렉트 방식이 GET 방식​ 이라 데이터 전송에는 적절하지 않다
    
    String userid = principal.getName();
    
    String inputPass = pwEncoder.encode(mvo.getUserpw()); /* 암호화 */
    
    model.addAttribute("member", mservice.selectPw(userid));
    mvo.setUserpw(inputPass);
    
    mservice.mypasspro(mvo);

    return "redirect:/";
    
//    ERROR: jdbc.sqltiming - 1. PreparedStatement.execute() FAILED! update members set userpw = '$2a$10$bHZnX0GmQlPYh8WJs/Ctru.EgdR8ZPiweWOFVjNu0dRUagdHbMzOq' 
//        where userid = {#userid} 
//         {FAILED after 6 msec}
//        java.sql.SQLSyntaxErrorException: ORA-00911: invalid character
  }
  
  //회원정보 수정 페이지
  //@Secured({"ROLE_ADMIN","ROLE_USER"}) /* 접근권한 제어 1 */
  
  @PreAuthorize("hasAnyRole('ROLE_ADMIN','ROLE_USER')") /* 접근권한 제어 2 */
  @GetMapping("/memberUp.do")
  public String memberUp(HttpServletRequest request, Model model, Principal principal) throws Exception {
     String userid = principal.getName();
     MemberVO mvo = mservice.selectMember(userid);
     model.addAttribute("member", mvo);
     return "/mypage/mypage";
  }
  //회원정보 수정 처리
  @PostMapping("/memberUpdate")
  public String memberUpdate(MemberVO mvo){
     mservice.memberUpdate(mvo);
      return "redirect:/";  
  }
  
  //나의 예약 페이지 조회
  @GetMapping("/myreser.do")
  public String relist(Model model,Principal principal) {
    String id = principal.getName();
    log.info("!!!!!!!!!!!!"+id);
    model.addAttribute("relist", mservice.getRelist(id));
    
    log.info(mservice.getRelist(id));
    
    return "/mypage/myreser";
  }
  


  
////비밀번호 체크
//@GetMapping("/pwChk.do")
//@ResponseBody
//public String pwChk(@RequestParam("userpw") String userpw) {
// 
//  MemberVO mvo = mservice.selectPw(userpw); //db상 저장된 비번 조회라고 생각...
//  String result = mservice.pwChk(userpw);
//  
//  String inputPass = pwEncoder.encode(mvo.getUserpw()); /* 암호화 */
//  mvo.setUserpw(inputPass); //이걸 여기에 써도 되는지? 아니면 오히려 밑이 틀리는지?
//  
//  if(pwEncoder.matches(userpw, mvo.getUserpw())) {
//    result="수정 ㅇㅋ";
//  } else {
//    result= "수정 ㄴ";
//  }
//  
//  return "redirect:/";
//}
  
  
  



}
