package com.theater.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.theater.domain.MovieVO;
import com.theater.domain.ReserveInsertVO;
import com.theater.domain.ReserveVO;
import com.theater.domain.SelectSeatVO;
import com.theater.domain.TheatersVO;
import com.theater.domain.TicketListVO;
import com.theater.domain.TicketsVO;
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

  @Override
  public void reserve(ReserveInsertVO rvo) {
    tmapper.reserve(rvo);
  }

  @Override
  public ReserveInsertVO getReserveInfo(ReserveInsertVO rvo) {
    
    return tmapper.getReserveInfo(rvo);
  }

  @Override
  public void seatFix(SelectSeatVO svo) {
    tmapper.seatFix(svo);
    
  }

  @Override
  public SelectSeatVO getTkInfo(SelectSeatVO svo) {
    
    return tmapper.getTkInfo(svo);
  }

  @Override
  public List<TicketListVO> getTkList() {
    // TODO Auto-generated method stub
    return tmapper.getTkList();
  }

  @Override
  public List<TicketListVO> getPayList() {
    
    return tmapper.getPayList();
  }

  

}
