package com.theater.service;

import java.util.List;

import com.theater.domain.Criteria;
import com.theater.domain.NoticeVO;


public interface NoticeService {

  public List<NoticeVO> getList(Criteria cri);

//검색결과 view
  public NoticeVO view(int nt_cd);

//조회수
  public void viewcount(int nt_cd);
  
//전체 레코드
//  public int getTotalcount(Criteria cri);

//page 이전 다음
  public NoticeVO nextPage(int nt_cd);
  public NoticeVO prevPage(int nt_cd);
  
}//inter
