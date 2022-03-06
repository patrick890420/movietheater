package com.theater.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.theater.domain.Criteria;
import com.theater.domain.PaymentsVO;
import com.theater.mapper.PaymentsMapper;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class PaymentsServiceImpl implements PaymentsService {


  private PaymentsMapper pMapper;

  @Override
  public List<PaymentsVO> getCashList(Criteria cri, String id) {
    return pMapper.getCashList(cri,id);
  }

  @Override
  public int getTotal(Criteria cri) {
    return pMapper.getTotal(cri);
  }

  @Override
  public int insertPay(PaymentsVO pvo) {
    
    return pMapper.insertPay(pvo);
  }

  @Override
  public List<PaymentsVO> nextPage(int pay_cd) {
    return pMapper.nextPage(pay_cd);
  }

  @Override
  public List<PaymentsVO> prevPage(int pay_cd) {
    return pMapper.prevPage(pay_cd);
  }



}//class
