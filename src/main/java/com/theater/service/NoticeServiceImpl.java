<<<<<<< HEAD
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
  private NoticeMapper Nmapper;


  @Override
  public void register(NoticeVO notice) {
    Nmapper.insert(notice);

  }

//전체 래코드
  @Override
  public int getTotalCount(Criteria cri){
    return Nmapper.getTotalCount(cri);
  }

  
  @Override
  public List<NoticeVO> getList(Criteria cri){
    return Nmapper.getListWithPaging(cri);
  }

//view page 
  @Override
  public NoticeVO read(int nt_cd) {
    Nmapper.readCount(nt_cd);    //조회수
    return Nmapper.read(nt_cd);
  }
    
  @Override
  public NoticeVO nextPage(int nt_cd) {
    return Nmapper.nextPage(nt_cd);
  }
  @Override
  public NoticeVO prevPage(int nt_cd) {
    return Nmapper.prevPage(nt_cd);
  }
  
}//class
=======
package com.theater.service;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.theater.domain.Criteria;
import com.theater.domain.NoticeVO;
import com.theater.mapper.NoticeMapper;

@Repository
public class NoticeServiceImpl implements NoticeService {

  
//  자동주입
  private NoticeMapper mapper;

//  @Override
//  public List<NoticeVO> getList(Criteria cri) {
//    return mapper.getListWithPaging(cri);
//  }
  
//  검색결과view page
  @Override
  public NoticeVO view(int nt_cd) {
    mapper.view(nt_cd);
    return mapper.view(nt_cd);
  }

//조회수
  @Override
  public void viewcount(int nt_cd) {
    mapper.viewcount(nt_cd);
  }



}//class
>>>>>>> branch 'develop' of https://github.com/patrick890420/movietheater.git
