package com.theater.service;

import java.util.List;

import com.theater.domain.AreainfoVO;
import com.theater.domain.ScheduleVO;
import com.theater.domain.ScreensVO;
import com.theater.domain.SeatsVO;
import com.theater.domain.TheatersVO;

public interface TheaterService {

  public void theaterInsertPro(TheatersVO tvo);
  public void theaterInsertPro2(ScreensVO svo);
  public void theaterInsertPro3(SeatsVO sevo);
  public int theatercode(ScreensVO svo);
  public int screencode(SeatsVO sevo);
  public List<TheatersVO> thread(String t_area);
  public List<TheatersVO> thinforead(String t_name);
  public List<TheatersVO> totalthread();
  public List<TheatersVO> theaterlist();
  public List<ScreensVO> adminScreenInfo(int t_cd);
  public List<AreainfoVO> areainfo();
  public List<ScheduleVO> adminScheduleSelect();
  
  public List<TheatersVO> getCityCheck(TheatersVO tvo);
  public List<TheatersVO> getCityCheck2(TheatersVO tvo);
  public List<TheatersVO> getScreenInfo(TheatersVO tvo);
  
  public List<ScheduleVO> adminScheduleList(int screen_cd);
  
  public void scheduleInsert(ScheduleVO scdvo);
  
  
}
