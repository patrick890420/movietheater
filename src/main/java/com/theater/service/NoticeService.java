package com.theater.service;

import java.util.List;

import com.theater.domain.Criteria;
import com.theater.domain.NoticeVO;

public interface NoticeService {


//Common(일반 list와 admin 이름만 같음)
  public void noticeInsert(NoticeVO nvo);
  public NoticeVO getAdminBoardView(int nt_cd);
  public void modify(NoticeVO nvo);
  public boolean NoticeDelete(int nt_cd);

//admin  
  public List<NoticeVO> getNoticeList(Criteria cri);
  public List<NoticeVO> getAdminNoticeList();

//User
//조회수
  public void getViewCount(int nt_cd);
//전체 래코드갯수
  public int getTotal(Criteria cri); 
  public NoticeVO nextPage(int nt_cd);
  public NoticeVO prevPage(int nt_cd);

//Index
  public List<NoticeVO>getNoticeIndex();

}//interface
