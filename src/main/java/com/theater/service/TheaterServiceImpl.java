package com.theater.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.theater.domain.ScreensVO;
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
    System.out.println("ser:"+t_area);
    return thmapper.theaterList(t_area);
  }
  @Override
  public List<TheatersVO> thinforead(String t_name) {
    return thmapper.theaterinfo(t_name);
  }
  @Override 
  public List<TheatersVO> totalthread() {
    return thmapper.totaltheaterList();
  }
  @Override
  public void theaterInsertPro(TheatersVO tvo) {
    thmapper.theaterInsertPro(tvo);
  }
  @Override
  public void theaterInsertPro2(ScreensVO svo) {
    thmapper.theaterInsertPro2(svo);
  }
}
