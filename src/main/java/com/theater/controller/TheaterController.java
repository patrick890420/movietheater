package com.theater.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping("/theater/*")
@AllArgsConstructor
public class TheaterController {
  
  
  @GetMapping("/theater.do")
  public void theater() {
    
  }
}
