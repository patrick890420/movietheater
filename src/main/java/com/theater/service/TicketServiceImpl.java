package com.theater.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.theater.domain.MovieVO;
import com.theater.domain.ReserveVO;
import com.theater.domain.TheatersVO;
import com.theater.mapper.TicketMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Service
@AllArgsConstructor
public class TicketServiceImpl implements TicketService {
  
  @Setter(onMethod_ = @Autowired)
  private TicketMapper tmapper;

  @Override
  public List<MovieVO> mvRead() {
    return tmapper.movieList();
  }

  @Override
  public List<ReserveVO> getAreaSelect(int m_cd) {
    return tmapper.getAreaSelect(m_cd);
  }

  @Override
  public List<ReserveVO> getTheaterSelect(ReserveVO rvo) {
    return tmapper.getTheaterSelect(rvo);
  }

  @Override
  public List<ReserveVO> getDaySelect(ReserveVO rvo) {
    return tmapper.getDaySelect(rvo);
  }

}
