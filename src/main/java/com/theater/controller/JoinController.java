package com.theater.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@AllArgsConstructor
@RequestMapping("/join/*")
@Log4j
public class JoinController {
	
	@GetMapping("/join.do")
	public void join() {
		
	}//join.do
	
//	@RequestMapping("")
//	public void 

}
