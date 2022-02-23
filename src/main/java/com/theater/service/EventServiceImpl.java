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
  public List<EventVO> getEventList(Criteria cri) {
    return eMapper.getEventList(cri);
  }

  @Override
  public EventVO getAdminBoardView(int event_cd) {
    eMapper.getAdminBoardView(event_cd);
    return eMapper.getAdminBoardView(event_cd);
  }

  @Override
  public boolean modify(EventVO evo) {
    return eMapper.modify(evo)==1;
  }

  @Override
  public boolean delete(int event_cd) {
    return eMapper.delete(event_cd)== 1;
  }

  

  @Override
  public void getViewCount(int event_cd) {
    eMapper.getViewCount(event_cd);
    
  }

  @Override
  public int getTotal(Criteria cri) {
    return eMapper.getTotal(cri);
  }

  @Override
  public EventVO nextPage(int event_cd) {
    return eMapper.nextPage(event_cd);
  }

  @Override
  public EventVO prevPage(int event_cd) {
    return eMapper.prevPage(event_cd);
  }

  @Override
  public List<EventVO> getEventList() {
    return eMapper.getEventList();
  }

}//class
