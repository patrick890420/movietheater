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
  private EventMapper eMapper;

//Common
  @Override
  public void eventInsert(EventVO evo) {
    eMapper.eventInsert(evo);
    
  }

//admin
  @Override
  public List<EventVO> getAdminList(Criteria cri) {
    return eMapper.getAdminList(cri);
  }

  @Override
  public EventVO getAdminBoardView(int event_cd) {
    eMapper.getAdminBoardView(event_cd);
    return eMapper.getAdminBoardView(event_cd);
  }

//User
  

}//class
