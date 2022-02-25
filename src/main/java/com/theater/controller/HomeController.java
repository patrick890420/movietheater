package com.theater.controller;


import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.theater.domain.Criteria;
import com.theater.service.MovieService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

/**
 * Handles requests for the application home page.
 */
@Controller
@Log4j
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@Setter(onMethod_= @Autowired)
	private MovieService movieService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
	  
	  model.addAttribute("mlist1", movieService.movieSelect1to5());
	  model.addAttribute("mlist2", movieService.movieSelect6to10());
	  model.addAttribute("mlist3", movieService.movieSelect11to15());
	  
	  return "index";
	}
	
	
}
