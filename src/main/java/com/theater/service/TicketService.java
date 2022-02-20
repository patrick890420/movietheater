package com.theater.service;

import java.util.List;

import com.theater.domain.MovieVO;
import com.theater.domain.ReserveVO;
import com.theater.domain.TheatersVO;

public interface TicketService {

  public List<MovieVO> mvRead();
  public List<ReserveVO> getAreaSelect(int m_cd);
  public List<ReserveVO> getTheaterSelect(ReserveVO rvo);
}
