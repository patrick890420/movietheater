package com.theater.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
  public void theater(Model model, @RequestParam(value="t_area", required=false, defaultValue= "1") int t_area,
      @RequestParam(value="t_name", required=false, defaultValue= "J-강남") String t_name) {
    System.out.println("t_area의 값?:"+t_area);
    model.addAttribute("thList", thservice.thread(t_area));
    model.addAttribute("thinfo", thservice.thinforead(t_name));
  }
  @GetMapping("/city.do")
  public String theatercity(Model model, @RequestParam int t_area) {
    System.out.println("t_area의 값:"+t_area);
    model.addAttribute("cityList", thservice.cityread(t_area));
    return "/theater/theater";
  }
  
  
}