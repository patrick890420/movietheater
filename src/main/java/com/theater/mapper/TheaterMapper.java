package com.theater.mapper;

import java.util.List;

import com.theater.domain.TheatersVO;

public interface TheaterMapper {
  
  public List<TheatersVO> theaterList(int t_area);//극장리스트
  public List<TheatersVO> theaterinfo(String t_name);//극장정보
  public List<TheatersVO> theatercity(int t_area);//도시정보
}
