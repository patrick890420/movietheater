package com.theater.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.theater.domain.Criteria;
import com.theater.domain.EventVO;
import com.theater.mapper.EventMapper;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class EventServiceImpl implements EventService {
  
  
//자동 주입
  private EventMapper emapper;

//admin입력
  @Override
  public void eventInsert(EventVO evo) {
    emapper.eventInsert(evo);
    
  }


//list
  @Override
  public List<EventVO> getList(Criteria cri) {
    return emapper.getList(cri);
  }


}//class
