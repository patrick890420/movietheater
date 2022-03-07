package com.theater.mapper;

import java.util.List;

import com.theater.domain.Criteria;
import com.theater.domain.NoticeVO;

public interface NoticeMapper {


//Common(일반 list와 admin 이름만 같음)
  public void noticeInsert(NoticeVO nvo);
  public NoticeVO getAdminBoardView(int nt_cd);
  

//admin
  public List<NoticeVO>getNoticeList(Criteria cri);
  public List<NoticeVO>getAdminNoticeList();
  public void modify(NoticeVO notice);
  public int NoticeDelete(int nt_cd);

//User
  public void getViewCount(int nt_cd);
  public int getTotal(Criteria cri);
  public NoticeVO nextPage(int nt_cd);
  public NoticeVO prevPage(int nt_cd);

//Index
  public List<NoticeVO>getNoticeIndex();

}//class