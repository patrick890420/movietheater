package com.theater.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.theater.service.TheaterService;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/theater/*")
@AllArgsConstructor
@Log4j
public class TheaterController {
  
  @Setter(onMethod_ = @Autowired)
  private TheaterService thservice;
  
  @GetMapping("/theater.do")
  public void theater(Model model) {
    
    model.addAttribute("thList", thservice.thread());
  }
}
