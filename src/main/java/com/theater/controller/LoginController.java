package com.theater.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.theater.domain.MemberVO;
import com.theater.service.MembersService;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/login/*") 
@AllArgsConstructor
@Log4j
public class LoginController {
  
  @Setter(onMethod_ = @Autowired) 
  private MembersService mservice;
  

  @Setter(onMethod_ = @Autowired) /* pw암호화 해주는것 */
  private PasswordEncoder pwEncoder;
  
  @GetMapping("/login.do")
  public void login() {
    log.info("로그인 실행 확인");
  }

  @PostMapping("/loginPro.do") 
  public String memberLogin(MemberVO mvo, RedirectAttributes rdat) {

    // 지금까지 파악된 의문점
    // 1. 패스워드 인코딩 할때마다 값이 변경됨 == 나중에 비교하고 싶어도 매번 바뀌어서 비교 불가
    // 2. 그렇다면 로그인할때는 어떻게 입력한 패스워드를 비교하는지가 궁금합니다 
    
    // 요거 천규형한테 보내주면 될듯!
    // 위에껏만 해결하면 비밀번호 변경 다 해결 되니까 잘 해보시고
    // 일단 변경 ㅅ절차? 그건 다 짜놨으니까 건들 필요 없음 (COntroller) ㅅㄱㄹ 
    return "redirect:/";
  }
  
  /* 로그아웃 */
  @RequestMapping(value="logout.do", method=RequestMethod.POST)
  public String logout(HttpServletRequest request) throws Exception{
    HttpSession session = request.getSession();
    return "redirect:/";    
  }


  
}
