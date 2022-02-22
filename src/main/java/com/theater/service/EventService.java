package com.theater.service;

import java.util.List;

import com.theater.domain.Criteria;
import com.theater.domain.EventVO;

public interface EventService {


//Common
  public void eventInsert(EventVO evo);
  public EventVO getAdminBoardView(int event_cd);
  public boolean modify(EventVO evo);
  public boolean delete(int event_cd);
  
//admin
  public List<EventVO> getEventList(Criteria cri);
  public List<EventVO> getEventList();

//User
//조회수
  public void getViewCount(int event_cd);
//전체 래코드갯수
  public int getTotal(Criteria cri); 
  public EventVO nextPage(int event_cd);
  public EventVO prevPage(int event_cd);

}//inter
