package com.theater.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.theater.domain.TheatersVO;
import com.theater.service.EventService;
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
  
  @Setter(onMethod_= @Autowired)
  private EventService eService;
  
  @GetMapping("/theater.do")
  public void theater(Model model, @RequestParam(value="t_area", required=false, defaultValue= "1") String t_area,
      @RequestParam(value="t_name", required=false, defaultValue= "TOHOシネマズ おいらせ下田") String t_name
      ) {
    
    model.addAttribute("aList",thservice.areainfo());
    model.addAttribute("thList", thservice.thread(t_area));
    model.addAttribute("thinfo", thservice.thinforead(t_name));
    model.addAttribute("elist", eService.getEventIndex());

    
    SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
    Date now = new Date();
    
    String now_dt = format.format(now);
    System.out.println(now_dt);
    
    TheatersVO tvo = new TheatersVO();
    tvo.setT_name(t_name);
    tvo.setStart_time(now_dt);
    log.info("확인"+thservice.getScreenInfo(tvo));
    model.addAttribute("sclist", thservice.getScreenInfo(tvo));
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
  
  @GetMapping("/dayClick.do")
  public  @ResponseBody List<TheatersVO> dayClick(@RequestParam("t_name") String t_name,@RequestParam("start_time") String start_time ) {
    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-M-d"); 
    SimpleDateFormat dateFormat2 = new SimpleDateFormat("yyyy-MM-dd"); 
    String beforeDate = start_time;
    String afterDate = "";
    
    try {
        Date date = dateFormat.parse(beforeDate); // 기존 string을 date 클래스로 변환
        afterDate = dateFormat2.format(date); // 변환한 값의 format 변경
    }
    catch (Exception e) {
        e.printStackTrace();
    }
    TheatersVO tvo = new TheatersVO();
    tvo.setT_name(t_name);
    tvo.setStart_time(afterDate);
    log.info("DAYCLICK=="+thservice.getScreenInfo(tvo));
    List<TheatersVO> screenInfo = thservice.getScreenInfo(tvo);
        
    return screenInfo;

  }
}