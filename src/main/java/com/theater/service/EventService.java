package com.theater.service;

import java.util.List;

import com.theater.domain.Criteria;
import com.theater.domain.EventVO;
import com.theater.domain.NoticeVO;

public interface EventService {


//admin
  public void eventInsert(EventVO evo);
  public List<EventVO> getAdminList(Criteria cri);
  public EventVO getAdminBoardView(int event_cd);
  

}//inter
