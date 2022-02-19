package com.theater.mapper;

import java.util.List;

import com.theater.domain.Criteria;
import com.theater.domain.NoticeVO;

public interface NoticeMapper {

  
//admin
  public void noticeInsert(NoticeVO nvo);
  public List<NoticeVO>getAdminList(Criteria cri);
  public NoticeVO getAdminBoardView(int nt_cd);

//전체 조회값
  public int getTotal(Criteria cri);

//page
  public List<NoticeVO> getListWithPaging(Criteria cri);

//제목 검색 결과 view page
  public NoticeVO nextPage(int nt_cd);
  public NoticeVO prevPage(int nt_cd);

//조회수 readcound
  public void readCount(int nt_cd);


  
}//class