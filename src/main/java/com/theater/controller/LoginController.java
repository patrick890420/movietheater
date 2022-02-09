package com.theater.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/login/*") 
@AllArgsConstructor
@Log4j
public class LoginController {
	
	@GetMapping("/login.do")
	public void login() {
		
	}//login.do

}
