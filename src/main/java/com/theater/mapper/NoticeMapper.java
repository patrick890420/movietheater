package com.theater.mapper;

import java.util.List;

import com.theater.domain.Criteria;
import com.theater.domain.NoticeVO;

public interface NoticeMapper {

//입력
  public void insert(NoticeVO notice);
  
//page
  public List<NoticeVO> getListWithPaging(Criteria cri);

}//class
