package com.theater.mapper;

import java.util.List;

import com.theater.domain.Criteria;
import com.theater.domain.EventVO;
import com.theater.domain.NoticeVO;

public interface EventMapper {


//Common(일반 list와 admin 이름만 같음)
  public void eventInsert(EventVO evo);
  public EventVO getAdminBoardView(int event_cd);

//admin입력
  public List<EventVO>getAdminList(Criteria cri);

  
}//inter
