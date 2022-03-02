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
  public List<PaymentsVO> getCashList(Criteria cri) {
    return pMapper.getCashList(cri);
  }

  @Override
  public int getTotal(Criteria cri) {
    return pMapper.getTotal(cri);
  }

}//class
