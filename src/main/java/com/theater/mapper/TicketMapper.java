package com.theater.mapper;

import java.util.List;

import com.theater.domain.MovieVO;
import com.theater.domain.ReserveVO;
import com.theater.domain.TheatersVO;

public interface TicketMapper {
  
  public List<MovieVO> movieList();//예매화면 영화리스트
  public List<ReserveVO> getAreaSelect(int m_cd);
  public List<ReserveVO> getTheaterSelect(ReserveVO rvo);
  public List<ReserveVO> getDaySelect(ReserveVO rvo);

}
