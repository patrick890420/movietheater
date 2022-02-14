package com.theater.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.theater.domain.TheatersVO;
import com.theater.mapper.TheaterMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Service
@AllArgsConstructor
public class TheaterServiceImpl implements TheaterService {
  
  @Setter(onMethod_ = @Autowired)
  private TheaterMapper thmapper;

  @Override
  public List<TheatersVO> thread() {
    return thmapper.theaterList();
  }

}
