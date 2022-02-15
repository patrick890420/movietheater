package com.theater.util;

import com.theater.domain.Criteria;

import lombok.Data;

@Data
public class PageMaker {

  /*시작 */
  private int startPage;
  
  private int endPage;
  
  private boolean prev,next;
  
  private int total;
  
  private Criteria cri;
  
  public PageMaker(Criteria cri, int total) {
    this.cri = cri;
    this.total = total;
    
    //마지막 페이지
    this.endPage = (int)(Math.ceil(cri.getPageNum()/10.0))*10;
    
    //시작 페이지
    this.startPage = this.endPage - 9;
    
    //전체 마지막 페이지
     int realEnd =(int)(Math.ceil(total * 1.0/cri.getAmount()));
     
     //전체 마지막 페이지가 화며에 보이는 페이지보다 작은경우 보이는 페이지 조정
     if(realEnd < this.endPage) {
       this.endPage = realEnd;
     }
     //시작페이지가 1보다 큰 경우
     this.prev = this.startPage > 1;
     
     //마지막 페이지가 1보다 큰 경우
     this.next = this.endPage < realEnd;
    
  }
  
}
