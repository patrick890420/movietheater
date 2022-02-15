package com.theater.mapper;

import java.util.List;

import com.theater.domain.Criteria;
import com.theater.domain.NoticeVO;

public interface NoticeMapper {

//입력
  public void insert(NoticeVO notice);
  
//page
  public List<NoticeVO> getListWithPaging(Criteria cri);

  public List<NoticeVO> getList(Criteria cri);

//제목 검색 결과 view page
  public NoticeVO read(int nt_cd);
  public NoticeVO nextPage(int nt_cd);
  public NoticeVO prevPage(int nt_cd);

//조회수 readcound
  public void readCount(int nt_cd);

//전체 래코드 갯수
  public int getTotal(Criteria cri);
  
}//class