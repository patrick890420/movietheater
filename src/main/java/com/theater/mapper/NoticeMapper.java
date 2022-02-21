package com.theater.mapper;

import java.util.List;

import com.theater.domain.Criteria;
import com.theater.domain.NoticeVO;

public interface NoticeMapper {


//Common(일반 list와 admin 이름만 같음)
  public void noticeInsert(NoticeVO nvo);
  public int modify(NoticeVO notice);
  public int delete(int nt_cd);

//admin
  public List<NoticeVO>getNoticeList(Criteria cri);
  public List<NoticeVO>getNoticeList();
  public NoticeVO getAdminBoardView(int nt_cd);

//User
  public NoticeVO getNoticeView(int nt_cd);
  public void getViewCount(int nt_cd);
  public int getTotal(Criteria cri);
  public NoticeVO nextPage(int nt_cd);
  public NoticeVO prevPage(int nt_cd);
//pageing
  public List<NoticeVO> getListWithPaging(Criteria cri);

  
}//class