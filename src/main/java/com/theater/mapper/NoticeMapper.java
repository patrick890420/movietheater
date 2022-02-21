package com.theater.mapper;

import java.util.List;

import com.theater.domain.Criteria;
import com.theater.domain.NoticeVO;

public interface NoticeMapper {


//Common
  public NoticeVO getAdminBoardView(int nt_cd);

//admin
  public void noticeInsert(NoticeVO nvo);
  public List<NoticeVO>getNoticeList(Criteria cri);
  public List<NoticeVO>getNoticeList();




//전체 조회수
  public int getTotal(Criteria cri);

//modify  
  public int modify(NoticeVO notice);

//delete  
  public int delete(int nt_cd);

//page 다음/이전글 
  public NoticeVO nextPage(int nt_cd);
  public NoticeVO prevPage(int nt_cd);

//pageing
  public List<NoticeVO> getListWithPaging(Criteria cri);


//User
  public NoticeVO getNoticeView(int nt_cd);
  public void getViewCount(int nt_cd);
}//class