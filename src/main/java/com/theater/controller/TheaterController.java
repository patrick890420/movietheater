package com.theater.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.theater.domain.TheatersVO;
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
  public void theater(Model model, @RequestParam(value="t_area", required=false, defaultValue= "1") String t_area,
      @RequestParam(value="t_name", required=false, defaultValue= "슈밤") String t_name) {
    
    model.addAttribute("aList",thservice.areainfo());
    model.addAttribute("thList", thservice.thread(t_area));
    model.addAttribute("thinfo", thservice.thinforead(t_name));
  }
  
  @GetMapping("/cityCheck.do")
  public  @ResponseBody List<TheatersVO> cityCheck(@RequestParam("t_area") int t_area ) {
    TheatersVO tvo = new TheatersVO();
    tvo.setT_area(t_area);
    List<TheatersVO> cityList = thservice.getCityCheck(tvo);
    return cityList;

  }
  @GetMapping("/cityCheck2.do")
  public  @ResponseBody List<TheatersVO> cityCheck2(@RequestParam("t_name") String t_name ) {
    TheatersVO tvo = new TheatersVO();
    tvo.setT_name(t_name);
    List<TheatersVO> cityList1 = thservice.getCityCheck2(tvo);
    return cityList1;

  }
}