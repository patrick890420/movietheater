package com.theater.mapper;

import java.util.List;

import com.theater.domain.Criteria;
import com.theater.domain.NoticeVO;

public interface NoticeMapper {
  

//  public List<NoticeVO> getList();
  
//검색 결과view
  public NoticeVO view(int nt_cd);

//조회수
  public void viewcount(int nt_cd);

//page= 이전/다음글
  public NoticeVO nextPage(int nt_cd);
  public NoticeVO prevPage(int nt_cd);
  

  
}//class
