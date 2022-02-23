package com.theater.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.theater.domain.ReserveVO;
import com.theater.domain.TheatersVO;
import com.theater.service.TicketService;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/ticket/*")
@AllArgsConstructor
@Log4j
public class TicketController {
  
  @Setter(onMethod_ = @Autowired)
  private TicketService tservice;

  @GetMapping("/ticket.do")
  public void ticket(Model model) {
    model.addAttribute("mvList", tservice.mvRead());
  }
  
  @GetMapping("/areaSelect.do")
  public  @ResponseBody List<ReserveVO> areaSelect(@RequestParam("m_cd") int m_cd ) {
    List<ReserveVO> areaList = tservice.getAreaSelect(m_cd);
    return areaList;

  }
  
  @GetMapping("/theaterSelect.do")
  public  @ResponseBody List<ReserveVO> theaterSelect(@RequestParam("m_cd") int m_cd,@RequestParam("t_cd") int t_cd ) {
    ReserveVO rvo = new ReserveVO();
    rvo.setT_area(t_cd);
    rvo.setM_cd(m_cd);
    List<ReserveVO> theaterList = tservice.getTheaterSelect(rvo);
    return theaterList;

  }
  @GetMapping("/daySelect.do")
  public  @ResponseBody List<ReserveVO> daySelect(@RequestParam("m_cd") int m_cd,@RequestParam("t_name") String t_name,@RequestParam("start_time") String start_time ) {
    ReserveVO rvo = new ReserveVO();
    rvo.setT_name(t_name);
    rvo.setM_cd(m_cd);
    rvo.setStart_time(start_time);
    List<ReserveVO> timeList = tservice.getDaySelect(rvo);
    return timeList;
    
  }
  
  @GetMapping("/reserve.do")
  public void reserve() {
    
  }
  
  @GetMapping("/seat.do")
  public void seat() {
    
  }
}
