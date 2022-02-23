package com.theater.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.theater.domain.AreainfoVO;
import com.theater.domain.ScheduleVO;
import com.theater.domain.ScreensVO;
import com.theater.domain.SeatsVO;
import com.theater.domain.TheatersVO;
import com.theater.mapper.TheaterMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Service
@AllArgsConstructor
public class TheaterServiceImpl implements TheaterService {
  
  @Setter(onMethod_ = @Autowired)
  private TheaterMapper thmapper;

  @Override
  public List<TheatersVO> thread(String t_area) {
    System.out.println("ser:"+t_area);
    return thmapper.theaterList(t_area);
  }
  @Override
  public List<TheatersVO> thinforead(String t_name) {
    return thmapper.theaterinfo(t_name);
  }
  @Override 
  public List<TheatersVO> totalthread() {
    return thmapper.totaltheaterList();
  }
  @Override
  public int theatercode(ScreensVO svo) {
    return thmapper.theatercode(svo);
  }
  @Override
  public int screencode(SeatsVO sevo) {
    return thmapper.screencode(sevo);
  }
  @Override
  public void theaterInsertPro(TheatersVO tvo) {
    thmapper.theaterInsertPro(tvo);
  }
  @Override
  public void theaterInsertPro2(ScreensVO svo) {
    thmapper.theaterInsertPro2(svo);
  }
  @Override
  public void theaterInsertPro3(SeatsVO sevo) {
    List<String> list = new ArrayList<String>();
    list.add("A1");list.add("A2");list.add("A3");list.add("A4");list.add("A5");list.add("A6");list.add("A7");list.add("A8");list.add("A9");list.add("A10");list.add("A11");
    list.add("B1");list.add("B2");list.add("B3");list.add("B4");list.add("B5");list.add("B6");list.add("B7");list.add("B8");list.add("B9");list.add("B10");list.add("B11");
    list.add("C1");list.add("C2");list.add("C3");list.add("C4");list.add("C5");list.add("C6");list.add("C7");list.add("C8");list.add("C9");list.add("C10");list.add("C11");
    list.add("D1");list.add("D2");list.add("D3");list.add("D4");list.add("D5");list.add("D6");list.add("D7");list.add("D8");list.add("D9");list.add("D10");list.add("D11");  
    list.add("E1");list.add("E2");list.add("E3");list.add("E4");list.add("E5");list.add("E6");list.add("E7");list.add("E8");list.add("E9");list.add("E10");list.add("E11");
    list.add("F1");list.add("F2");list.add("F3");list.add("F4");list.add("F5");list.add("F6");list.add("F7");list.add("F8");list.add("F9");list.add("F10");list.add("F11");
    list.add("G1");list.add("G2");list.add("G3");list.add("G4");list.add("G5");list.add("G6");list.add("G7");list.add("G8");list.add("G9");list.add("G10");list.add("G11");
    list.add("H1");list.add("H2");list.add("H3");list.add("H4");list.add("H5");list.add("H6");list.add("H7");list.add("H8");list.add("H9");list.add("H10");list.add("H11");
    list.add("I1");list.add("I2");list.add("I3");list.add("I4");list.add("I5");list.add("I6");list.add("I7");list.add("I8");list.add("I9");list.add("I10");list.add("I11");
    list.add("J1");list.add("J2");list.add("J3");list.add("J4");list.add("J5");list.add("J6");list.add("J7");list.add("J8");list.add("J9");list.add("J10");list.add("J11");
    list.add("K1");list.add("K2");list.add("K3");list.add("K4");list.add("K5");list.add("K6");list.add("K7");list.add("K8");list.add("K9");list.add("K10");list.add("K11");
    list.add("L1");list.add("L2");list.add("L3");list.add("L4");list.add("L5");list.add("L6");list.add("L7");list.add("L8");list.add("L9");list.add("L10");list.add("L11");
    list.add("M1");list.add("M2");list.add("M3");list.add("M4");list.add("M5");list.add("M6");list.add("M7");list.add("M8");list.add("M9");list.add("M10");list.add("M11");
    list.add("N1");list.add("N2");list.add("N3");list.add("N4");list.add("N5");list.add("N6");list.add("N7");list.add("N8");list.add("N9");list.add("N10");list.add("N11");
    list.add("O1");list.add("O2");list.add("O3");list.add("O4");list.add("O5");list.add("O6");list.add("O7");list.add("O8");list.add("O9");list.add("O10");list.add("O11");
    sevo.setList(list);
    
    thmapper.theaterInsertPro3(sevo);
  }
  @Override 
  public List<TheatersVO> theaterlist() {
    return thmapper.theaterlist();
  }
  @Override 
  public List<ScreensVO> adminScreenInfo(int t_cd) {
    return thmapper.adminScreenInfo(t_cd);
  }
  @Override 
  public List<AreainfoVO> areainfo() {
    return thmapper.areainfo();
  }
  
  @Override
  public List<ScheduleVO> adminScheduleSelect() {
    return thmapper.adminScheduleSelect();
  }
  @Override
  public List<TheatersVO> getCityCheck(TheatersVO tvo) {
    
    return thmapper.getCityCheck(tvo);
  }
}
