package com.theater.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.theater.service.NoticeService;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/notice/*")
@AllArgsConstructor
@Log4j
public class NoticeController {
  
  
 
  
  @GetMapping("/noticeview.do")
  public void eventview() {
  
  }

}//class

