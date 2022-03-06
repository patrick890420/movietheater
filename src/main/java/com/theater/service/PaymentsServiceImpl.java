package com.theater.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.theater.domain.Criteria;
import com.theater.domain.CriteriaMyPage;
import com.theater.domain.PaymentsVO;
import com.theater.mapper.PaymentsMapper;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class PaymentsServiceImpl implements PaymentsService {


  private PaymentsMapper pMapper;

  @Override
  public List<PaymentsVO> getCashList(CriteriaMyPage cri) {
    return pMapper.getCashList(cri);
  }

  @Override
  public int getTotal(CriteriaMyPage cri) {
    return pMapper.getTotal(cri);
  }

  @Override
  public int insertPay(PaymentsVO pvo) {
    
    return pMapper.insertPay(pvo);
  }

  @Override
  public List<PaymentsVO> getCashPaging(CriteriaMyPage cri) {
    return pMapper.getCashList(cri);
  }


}//class
