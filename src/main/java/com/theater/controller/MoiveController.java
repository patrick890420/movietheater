package com.theater.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.theater.domain.Criteria;
import com.theater.domain.PageVO;
import com.theater.service.MovieService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/movie/*")
@AllArgsConstructor
@Log4j
public class MoiveController {
	private MovieService Movieservice;
  
  
	
	@GetMapping("/view.do")
	public void view(@RequestParam("m_cd") int m_cd,Criteria cri, Model model) {
		model.addAttribute("view", Movieservice.read(m_cd));
	}//view.do
	
	
	@GetMapping("/movie.do") 
	public void MovieList(Criteria cri, Model model) {
	  cri.setAmount(9);
	  PageVO pageVO = new PageVO(cri, Movieservice.getTotal(cri));
	  model.addAttribute("pageMaker", pageVO);
	  model.addAttribute("list",Movieservice.MovieList(cri));
    
	  }
	
	@GetMapping({"/MovieView.do"})
	public void read(@RequestParam("m_cd") int m_cd,@ModelAttribute("cri") Criteria cri,Model model) {
	  model.addAttribute("view", Movieservice.read(m_cd));
	  model.addAttribute("nextPage",Movieservice.nextPage(m_cd));
	  model.addAttribute("prevPage",Movieservice.prevPage(m_cd));
	}
	
	
}//moive controller
