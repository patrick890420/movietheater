package com.theater.mapper;

import java.util.List;

import com.theater.domain.ScheduleVO;
import com.theater.domain.ScreensVO;
import com.theater.domain.SeatsVO;
import com.theater.domain.TheatersVO;

public interface TheaterMapper {
  
  public void theaterInsertPro(TheatersVO tvo);//극장정보입력(극장)
  public void theaterInsertPro2(ScreensVO svo);//극장정보입력(스크린)
  public void theaterInsertPro3(SeatsVO sevo);//극장정보입력(시트)
  public int theatercode(ScreensVO svo);//극장코드
  public int screencode(SeatsVO sevo);//스크린코드
  public List<TheatersVO> theaterList(String t_area);//극장리스트 , 도시정보
  public List<TheatersVO> theaterinfo(String t_name);//극장정보
  public List<TheatersVO> totaltheaterList();//극장 전체리스트
  public List<TheatersVO> theaterlist();//극장list
  public List<ScreensVO> adminScreenInfo(int t_cd);//극장list-screen
  public List<ScheduleVO> adminScheduleSelect();
}
