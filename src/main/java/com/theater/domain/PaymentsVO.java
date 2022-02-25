package com.theater.domain;


import lombok.Data;

@Data
public class PaymentsVO {

  private int pay_cd; //결제코드=예매코드
  private int charge;  //결제금액
  private String pay_method; //결제수단
  private int pay_status;  //결제상태
  private String pay_name; //결제수단
  
}
