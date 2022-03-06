package com.theater.service;

import java.util.List;

import com.theater.domain.Criteria;
import com.theater.domain.CriteriaMyPage;
import com.theater.domain.PaymentsVO;

public interface PaymentsService {


  public List<PaymentsVO>getCashList(CriteriaMyPage cri);
  public List<PaymentsVO>getCashPaging(CriteriaMyPage cri);

//전체 수
  public int getTotal(CriteriaMyPage cri);
  
  public int insertPay(PaymentsVO pvo);
  

}//interface
