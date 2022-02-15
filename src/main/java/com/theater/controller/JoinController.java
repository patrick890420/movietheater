package com.theater.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.theater.domain.MemberVO;
import com.theater.service.MembersService;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@AllArgsConstructor
@RequestMapping("/join/*")
@Log4j
public class JoinController {

	@Setter(onMethod_ = @Autowired)
	private MembersService mservice;
	  
	@Setter(onMethod_ = @Autowired) /* pw암호화 해주는것 */
	private PasswordEncoder pwEncoder;
	  
	@GetMapping("/join.do")
	public void join() {

	}// join.do
	
	@PostMapping("joinPro.do")
	public String register(MemberVO mvo, RedirectAttributes rdat) {
  	String inputPass = pwEncoder.encode(mvo.getPwd()); /* 암호화 */
    mvo.setPwd(inputPass);
    
    mservice.register(mvo);
    return "redirect:/";
	}


}
