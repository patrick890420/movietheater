package com.theater.mapper;

import java.util.List;

import com.theater.domain.TheatersVO;

public interface TheaterMapper {
  
  public void theaterInsertPro(TheatersVO tvo);
  public List<TheatersVO> theaterList(String t_area);//극장리스트 , 도시정보
  public List<TheatersVO> theaterinfo(String t_name);//극장정보
  public List<TheatersVO> totaltheaterList();//극장 전체리스트
}
