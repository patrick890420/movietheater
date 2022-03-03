package com.theater.service;

import java.util.List;

import com.theater.domain.Criteria;
import com.theater.domain.PaymentsVO;

public interface PaymentsService {


  public List<PaymentsVO>getCashList(Criteria cri);

//전체 수
  public int getTotal(Criteria cri);

}//interface
