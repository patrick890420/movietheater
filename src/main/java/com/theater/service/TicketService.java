package com.theater.service;

import java.util.List;

import com.theater.domain.MovieVO;
import com.theater.domain.ReserveInsertVO;
import com.theater.domain.ReserveVO;
import com.theater.domain.SelectSeatVO;
import com.theater.domain.TicketListVO;
import com.theater.domain.TicketsVO;

public interface TicketService {

  public List<MovieVO> mvRead();
  public List<ReserveVO> getAreaSelect(int m_cd);
  public List<ReserveVO> getTheaterSelect(ReserveVO rvo);
  public List<ReserveVO> getDaySelect(ReserveVO rvo);
  public ReserveInsertVO getReserveInfo(ReserveInsertVO rvo);
  public void seatFix(SelectSeatVO svo);
  public SelectSeatVO getTkInfo(SelectSeatVO svo);
  public List<TicketListVO> getTkList();
  
  public void reserve(ReserveInsertVO rvo);
}
