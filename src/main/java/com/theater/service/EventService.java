package com.theater.service;

import java.util.List;

import com.theater.domain.Criteria;
import com.theater.domain.EventVO;

public interface EventService {


//admin입력
  public void eventInsert(EventVO evo);
  
//list
  public List<EventVO>getList(Criteria cri);

  

}//inter
