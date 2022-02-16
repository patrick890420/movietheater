package com.theater.domain;

import lombok.Data;

@Data
public class Criteria {

  private int pageNum;
  private int amount;
  private String searchType;
  private String searchName;
  
  public Criteria() {
    this(1,10);
  }
  
  public Criteria(int pageNum, int amount) {
    this.pageNum= pageNum;
    this.amount= amount;
  }
  public String[] getTypeArr() {
    return searchType==null? new String[] {}: searchType.split("");
  }

}//class
