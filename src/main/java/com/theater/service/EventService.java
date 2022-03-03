package com.theater.service;

import java.util.List;

import com.theater.domain.Criteria;
import com.theater.domain.EventVO;

public interface EventService {


//Common
  public void eventInsert(EventVO evo);
  public EventVO getAdminBoardView(int event_cd);
  public boolean EventDelete(int event_cd);
  
//admin
  public List<EventVO> getEventList(Criteria cri);
  public List<EventVO> getEventList();
  public void modify(EventVO evo);

//User
//조회수
  public void getViewCount(int event_cd);
//전체 래코드갯수
  public int getTotal(Criteria cri); 
  public EventVO nextPage(int event_cd);
  public EventVO prevPage(int event_cd);

//index
  public List<EventVO>getEventIndex();
}//inter
