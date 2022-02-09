package com.theater.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/movie/*")
@AllArgsConstructor
@Log4j
public class MoiveController {
	
	@GetMapping("/movie.do")
	public void movie() {
		
	}//movie.do
	
	@GetMapping("/view.do")
	public void view() {
		
	}//view.do
	
}//moive controller
