package com.theater.mapper;

import java.util.List;

import com.theater.domain.Criteria;
import com.theater.domain.EventVO;
import com.theater.domain.NoticeVO;

public interface EventMapper {


//admin입력
  public void eventInsert(EventVO evo);
  public List<EventVO>getAdminList(Criteria cri);
  public EventVO getAdminBoardView(int event_cd);
  
}//inter
