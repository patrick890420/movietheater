package com.theater.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.theater.domain.Criteria;
import com.theater.domain.PageVO;
import com.theater.domain.ReviewVO;
import com.theater.service.MovieService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/movie/*")
@AllArgsConstructor
@Log4j
public class MoiveController {
	private MovieService movieService;
  
  
	
	@GetMapping("/view.do")
	public void view(@RequestParam("m_cd") int m_cd,Criteria cri, Model model) {
	  
		model.addAttribute("view", movieService.read(m_cd));
    model.addAttribute("review",movieService.get(m_cd));
    model.addAttribute("cut",movieService.movieStillcutSelect(m_cd));
    model.addAttribute("info",movieService.adminMovieSelect(m_cd));

	}//view.do
	
	
	@GetMapping("/movie.do") 
	public void movieList(Criteria cri, Model model) {
	  cri.setAmount(9);
	  PageVO pageVO = new PageVO(cri, movieService.getTotal(cri));
	  model.addAttribute("pageMaker", pageVO);
	  model.addAttribute("list",movieService.movieList(cri));
	  log.info(movieService.movieList(cri));
    
	  }
	
	@GetMapping("/MovieView.do")
	public void read(@RequestParam("m_cd") int m_cd,@ModelAttribute("cri") Criteria cri,Model model) {
	  model.addAttribute("view", movieService.read(m_cd));
	  model.addAttribute("nextPage",movieService.nextPage(m_cd));
	  model.addAttribute("prevPage",movieService.prevPage(m_cd));

	}
	
	@PostMapping("/movieReviewInsert.do")
	public String movieReviewInsert(@RequestParam("m_cd") int m_cd,Model model,ReviewVO rvo) {
	  model.addAttribute("m_cd",m_cd);
	  movieService.register(rvo);
	  
	  System.out.println(rvo);
	  
	  return "redirect:/movie/view.do";
	}
}//moive controller
