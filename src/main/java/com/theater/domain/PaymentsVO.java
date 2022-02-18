package com.theater.domain;

import java.util.Date;

import lombok.Data;

@Data
public class PaymentsVO {

  private int tkt_cd; //예매코드
  private int charge;  //결제금액
  private String pay_method; //결제수단
}
