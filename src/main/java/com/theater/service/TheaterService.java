package com.theater.service;

import java.util.List;

import com.theater.domain.TheatersVO;

public interface TheaterService {

  public List<TheatersVO> thread(String t_area);
  public List<TheatersVO> thinforead(String t_name);
}
