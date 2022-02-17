package com.theater.mapper;

import java.util.List;

import com.theater.domain.Criteria;
import com.theater.domain.EventVO;

public interface EventMapper {


//admin입력
  public void eventInsert(EventVO evo);

//list
  public List<EventVO>getList(Criteria cri);
  
}//inter
