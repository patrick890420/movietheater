package com.theater.domain;

import lombok.Data;

@Data
public class CriteriaMyPage {

  private int pageNum;
  private int amount;
  private String searchType;
  private String searchName;
  private String id;
  
  public CriteriaMyPage() {
    this(1,10);
  }
  
  public CriteriaMyPage(int pageNum, int amount) {
    this.pageNum= pageNum;
    this.amount= amount;
  }
  public String[] getTypeArr() {
    return searchType==null? new String[] {}: searchType.split("");
  }

}//class
