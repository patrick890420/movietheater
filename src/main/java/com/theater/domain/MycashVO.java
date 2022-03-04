package com.theater.domain;

import lombok.Data;

@Data
public class MycashVO {

  private int charge;  //결제금액
  private String pay_method; //결제수단
  private int pay_status;  //결제상태
  private String title;
  private String tkt_date;
}
