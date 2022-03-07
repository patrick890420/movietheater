package com.theater.controller;

import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.theater.domain.PaymentsVO;
import com.theater.domain.ReserveInsertVO;
import com.theater.domain.ReserveVO;
import com.theater.domain.SelectSeatVO;
import com.theater.domain.TheatersVO;
import com.theater.service.PaymentsService;
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
  
  @Setter(onMethod_ = @Autowired)
  private PaymentsService pservice;
  

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
  public  @ResponseBody List<ReserveVO> daySelect(@RequestParam("m_cd") int m_cd
      ,@RequestParam("t_name") String t_name,@RequestParam("start_time") String start_time,@RequestParam("t_area") String t_area ) {
    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-M-d"); 
    SimpleDateFormat dateFormat2 = new SimpleDateFormat("yyyy-MM-dd"); 
     
    String beforeDate = start_time;
    String afterDate = "";
    
    try {
        Date date = dateFormat.parse(start_time); // 기존 string을 date 클래스로 변환
        afterDate = dateFormat2.format(date); // 변환한 값의 format 변경
    }
    catch (Exception e) {
        e.printStackTrace();
    }
    ReserveVO rvo = new ReserveVO();
    rvo.setT_name(t_name);
    rvo.setM_cd(m_cd);
    rvo.setStart_time(afterDate);
    List<ReserveVO> timeList = tservice.getDaySelect(rvo);
    return timeList;
    
  }
  
  @GetMapping("/reserve.do")
  public String reserve(ReserveInsertVO rvo, Model model) {
    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-M-d"); 
    SimpleDateFormat dateFormat2 = new SimpleDateFormat("yyyy-MM-dd"); 
     
    String beforeDate = rvo.getTkt_date();
    String afterDate = "";
    
    try {
        Date date = dateFormat.parse(rvo.getTkt_date()); // 기존 string을 date 클래스로 변환
        afterDate = dateFormat2.format(date); // 변환한 값의 format 변경
    }
    catch (Exception e) {
        e.printStackTrace();
    }
    rvo.setTkt_date(afterDate);
    tservice.reserve(rvo);
    model.addAttribute("rsInfo",tservice.getReserveInfo(rvo));
    return "/ticket/seat";
  }
  
  @GetMapping("/movePayment.do")
  public String movePayment(SelectSeatVO svo,Model model) {
    
    String str =  svo.getSeat_cd();
    List<String> seatList = Arrays.asList(str.split(","));
    
    svo.setSeatList(seatList);
    tservice.seatFix(svo);
    model.addAttribute("tkInfo",tservice.getTkInfo(svo));
    model.addAttribute("svoInfo",svo);
    return "/ticket/payment";
  }
  
  @GetMapping("/seat.do")
  public void seat() {
    
  }
  
  @RequestMapping(value = "/insertPayment" ,method = RequestMethod.POST)
  public @ResponseBody int pay(@RequestBody PaymentsVO pvo) {

    log.info("!!!!!!!"+pvo);
    return  pservice.insertPay(pvo);
   
  }
}
