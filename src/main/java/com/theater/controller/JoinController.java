package com.theater.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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

  }
//아이디 체크
  @GetMapping("/idChk.do")
  public @ResponseBody int idChk(@RequestParam("userid") String userid) {
    int result = mservice.idChk(userid);
    return result;
  }
  //라이언트에서 서버로 필요한 데이터를 전송하기 위해서 JSON이라는 데이터를 요청 본문에 담아서 서버로 보내면, 서버에서는 @RequestBody 어노테이션을 사용하여 HTTP 요청 본문에 담긴 값들을 자바 객체로 변환 시켜, 객체에 저장시킵니다.
  //서버에서 클라이언트로 응답 데이터를 전송하기 위해서 @ResponseBody 를 사용하여 자바 객체를 HTTP 응답 본문의 객체로 변환하여 클라이언트로 전송시키는 역할
  
  @PostMapping("/joinPro.do") //레지스터 등록
  public String register(MemberVO mvo, RedirectAttributes rdat) {

    String inputPass = pwEncoder.encode(mvo.getUserpw()); /* 암호화 */
    mvo.setUserpw(inputPass);

    mservice.register(mvo);
    /* rdat.addAttribute("result",mvo.getUserid()); */
    return "redirect:/";
  }

}
