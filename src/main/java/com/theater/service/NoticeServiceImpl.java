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
  private NoticeMapper nmapper;


  @Override
  public void noticeInsert(NoticeVO nvo) {
    nmapper.noticeInsert(nvo); 
  }
  @Override
  public List<NoticeVO> getAdminList(Criteria cri) {
    return nmapper.getAdminList(cri);
  }
  @Override
  public NoticeVO getAdminBoardView(int nt_cd) {
    nmapper.getAdminBoardView(nt_cd);
    return nmapper.getAdminBoardView(nt_cd);
  }
  
//전체 조회값
  @Override
  public int getTotal(Criteria cri){
    return nmapper.getTotal(cri);
  }

    
  @Override
  public NoticeVO nextPage(int nt_cd) {
    return nmapper.nextPage(nt_cd);
  }
  @Override
  public NoticeVO prevPage(int nt_cd) {
    return nmapper.prevPage(nt_cd);
  }

  
  

  

  
  
}//class