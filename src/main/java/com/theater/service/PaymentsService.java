package com.theater.service;

import java.util.List;

import com.theater.domain.Criteria;
import com.theater.domain.PaymentsVO;

public interface PaymentsService {


  public List<PaymentsVO>getCashList(Criteria cri,String id);

//전체 수
  public int getTotal(Criteria cri);
  
  public int insertPay(PaymentsVO pvo);
  
  public List<PaymentsVO>nextPage(int pay_cd);
  public List<PaymentsVO>prevPage(int pay_cd);
  

}//interface
