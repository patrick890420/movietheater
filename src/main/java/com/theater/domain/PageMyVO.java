package com.theater.domain;

import lombok.Data;

@Data
public class PageMyVO {

  private int startPage;
  private int endPage;
  private boolean prev, next;
  private int total;
  private int pageNum;
  private int amount;
  private String id;
  
  
  private CriteriaMyPage cri;
  
  public PageMyVO(CriteriaMyPage cri, int total) {
    this.cri= cri;
    this.total= total;
    this.pageNum = cri.getPageNum();
    this.amount = cri.getAmount();
    
    this.endPage= (int)(Math.ceil(this.pageNum/ 10.0))* 10;
    this.startPage= this.endPage - 10 +1;
    int realEnd= (int)(Math.ceil(this.total / (double)this.amount));
    if(realEnd < this.endPage) {
      this.endPage= realEnd;
    }
    
    this.prev= this.startPage > 1;
    
    this.next= this.endPage < realEnd;
  }
  
}//class
