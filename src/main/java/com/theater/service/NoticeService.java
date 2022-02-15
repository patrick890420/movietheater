<<<<<<< HEAD
package com.theater.service;

import java.util.List;

import com.theater.domain.Criteria;
import com.theater.domain.NoticeVO;

public interface NoticeService {


  public void register(NoticeVO notice);

//전체 래코드갯수
  public int getTotalCount(Criteria cri); 

  public List<NoticeVO> getList(Criteria cri);

//view page 
  public NoticeVO read(int nt_cd);

  public NoticeVO nextPage(int nt_cd);
  public NoticeVO prevPage(int nt_cd);
  
}//inter
=======
package com.theater.service;

import java.util.List;

import com.theater.domain.Criteria;
import com.theater.domain.NoticeVO;


public interface NoticeService {

//  public List<NoticeVO> getList();

//검색결과 view
  public NoticeVO view(int nt_cd);

//조회수
  public void viewcount(int nt_cd);
  

  
}//inter
>>>>>>> branch 'develop' of https://github.com/patrick890420/movietheater.git
