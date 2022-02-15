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
	public void view() {
		
	}//view.do
	
	@GetMapping("/movie.do") 
	public void MovieList(Criteria cri, Model model) {
	  model.addAttribute("list",Movieservice.MovieList(cri));
	  int total = Movieservice.getTotalCount(cri);
	  model.addAttribute("pageMaker", new PageVO(cri,total));
	  }
	
	@GetMapping({"/MovieView.do"})
	public void read(@RequestParam("m_cd") int m_cd,@ModelAttribute("cri") Criteria cri,Model model) {
	  model.addAttribute("view", Movieservice.read(m_cd));
	  model.addAttribute("nextPage",Movieservice.nextPage(m_cd));
	  model.addAttribute("prevPage",Movieservice.prevPage(m_cd));
	}
	
	
}//moive controller
