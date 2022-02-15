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
  public List<TheatersVO> thread(String t_area) {
    return thmapper.theaterList(t_area);
  }
  @Override
  public List<TheatersVO> thinforead(String t_name) {
    return thmapper.theaterinfo(t_name);
  }
}
