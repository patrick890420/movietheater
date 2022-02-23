package com.theater.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.theater.domain.Criteria;
import com.theater.domain.NoticeVO;
import com.theater.mapper.NoticeMapper;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class NoticeServiceImpl implements NoticeService {

  
//  자동주입
  private NoticeMapper nMapper;


  @Override
  public void noticeInsert(NoticeVO nvo) {
    nMapper.noticeInsert(nvo); 
  }
  @Override
  public List<NoticeVO> getNoticeList(Criteria cri) {
    return nMapper.getNoticeList(cri);
  }
  @Override
  public NoticeVO getAdminBoardView(int nt_cd) {
    nMapper.getAdminBoardView(nt_cd);
    return nMapper.getAdminBoardView(nt_cd);
  }
  
//전체 조회값
  @Override
  public int getTotal(Criteria cri){
    return nMapper.getTotal(cri);
  }
  
  @Override
  public void modify(NoticeVO nvo) {
   nMapper.modify(nvo);
  }
  
  @Override
  public boolean delete(int nt_cd) {
    return nMapper.delete(nt_cd)== 1;
  }
    
  @Override
  public NoticeVO nextPage(int nt_cd) {
    return nMapper.nextPage(nt_cd);
  }
  @Override
  public NoticeVO prevPage(int nt_cd) {
    return nMapper.prevPage(nt_cd);
  }
  @Override
  public List<NoticeVO> getNoticeList() {
    return nMapper.getNoticeList();
  }


//User
//조회수
  @Override
  public void getViewCount(int nt_cd) {
    nMapper.getViewCount(nt_cd);
  
}
  
}//class