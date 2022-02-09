package com.theater.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.theater.service.EventService;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/event/*")
@AllArgsConstructor
@Log4j
public class EventController {

  @Setter(onMethod_=@Autowired)
  private EventService Eservice;
  
  @GetMapping("/event.do")
  public void event() {
    
  }
  
  @GetMapping("/eventview.do")
  public void eventview() {
    
  }
  

}//class
