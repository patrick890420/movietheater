package com.theater.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.theater.domain.MemberVO;
import com.theater.service.MembersService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@AllArgsConstructor
@RequestMapping("/join/*")
@Log4j
public class JoinController {

//	@Setter(onMethod_ = @Autowired)
//	private MembersService service;
//
//	@Setter(onMethod_ = @Autowired) /* pw암호화 해주는것 */
//	private PasswordEncoder pwEncoder;

	@GetMapping("/join.do")
	public void join() {

	}// join.do

//	@RequestMapping("/joinPro.do")
//	public void joinPro() {
//		MembersService.Memberinsert()
//		
//	}
	
//    @Autowired
//    private MembersService MembersService;

	@ResponseBody
	@RequestMapping(value="/idChk", method = RequestMethod.POST)
	public int idChk(MemberVO member) throws Exception {
	  int result = MembersService.idChk(member);
	  return result;
	}


}
