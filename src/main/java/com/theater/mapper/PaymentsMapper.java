package com.theater.mapper;

import java.util.List;

import com.theater.domain.Criteria;
import com.theater.domain.PaymentsVO;

public interface PaymentsMapper {


  public List<PaymentsVO>getCashList(Criteria cri);
//전체 수
  public int getTotal(Criteria cri);

  public int insertPay(PaymentsVO pvo);
}//interface
