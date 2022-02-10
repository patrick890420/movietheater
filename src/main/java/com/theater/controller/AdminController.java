package com.theater.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping("/adm/*")
@AllArgsConstructor
public class AdminController {

  
  @GetMapping("/admin")
  public void admin() {
    
  }
}
