package com.theater.mapper;

import java.util.List;

import com.theater.domain.Criteria;
import com.theater.domain.EventVO;

public interface EventMapper {


//Common(일반 list와 admin 이름만 같음)
  public void eventInsert(EventVO evo);
  public EventVO getAdminBoardView(int event_cd);
  

//admin입력
  public List<EventVO>getEventList(Criteria cri);
  public List<EventVO>getAdminEventList();
  public int modify(EventVO evo);
  public int EventDelete(int event_cd);

//User
  public void getViewCount(int event_cd);
  public int getTotal(Criteria cri);
  public EventVO nextPage(int event_cd);
  public EventVO prevPage(int event_cd);

//index
  public List<EventVO>getEventIndex();
  
}//inter
