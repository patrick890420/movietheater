package com.theater.service;

import java.util.List;

import com.theater.domain.Criteria;
import com.theater.domain.NoticeVO;

public interface NoticeService {


//admin
  public void noticeInsert(NoticeVO nvo);

//전체 래코드갯수
  public int getTotal(Criteria cri); 

  public List<NoticeVO> getList(Criteria cri);

//view page 
  public NoticeVO read(int nt_cd);

  public NoticeVO nextPage(int nt_cd);
  public NoticeVO prevPage(int nt_cd);
  
}//inter
