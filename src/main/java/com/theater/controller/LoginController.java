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
		
	}

  @PostMapping("/loginPro.do") 
  public String memberLogin(MemberVO mvo, RedirectAttributes rdat) {

    return "redirect:/";
  }
  
  /* 로그아웃 */
  @RequestMapping(value="logout.do", method=RequestMethod.POST)
  public String logout(HttpServletRequest request) throws Exception{
    HttpSession session = request.getSession();
    return "redirect:/";    
  }


	
}
