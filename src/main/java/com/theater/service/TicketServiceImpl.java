package com.theater.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.theater.domain.MovieVO;
import com.theater.mapper.TicketMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Service
@AllArgsConstructor
public class TicketServiceImpl implements TicketService {
  
  @Setter(onMethod_ = @Autowired)
  private TicketMapper tmapper;

  @Override
  public List<MovieVO> mvread() {
    return tmapper.movieList();
  }

}
