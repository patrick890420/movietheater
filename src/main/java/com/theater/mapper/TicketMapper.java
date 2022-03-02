package com.theater.mapper;

import java.util.List;

import com.theater.domain.MovieVO;
import com.theater.domain.ReserveInsertVO;
import com.theater.domain.ReserveVO;
import com.theater.domain.SelectSeatVO;
import com.theater.domain.TheatersVO;
import com.theater.domain.TicketListVO;

public interface TicketMapper {
  
  public List<MovieVO> movieList();//예매화면 영화리스트
  public List<ReserveVO> getAreaSelect(int m_cd);
  public List<ReserveVO> getTheaterSelect(ReserveVO rvo);
  public List<ReserveVO> getDaySelect(ReserveVO rvo);
  public ReserveInsertVO getReserveInfo(ReserveInsertVO rvo);
  public void seatFix(SelectSeatVO svo);
  public SelectSeatVO getTkInfo(SelectSeatVO svo);
  public List<TicketListVO> getTkList();
  
  public void reserve(ReserveInsertVO rvo);

}
