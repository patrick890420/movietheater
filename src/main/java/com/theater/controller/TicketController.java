package com.theater.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping("/ticket/*")
@AllArgsConstructor
public class TicketController {

  @GetMapping("/ticket.do")
  public void ticket() {
    
  }
  
  @GetMapping("/seat.do")
  public void seat() {
    
  }
}
