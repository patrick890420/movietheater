package com.theater.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.theater.domain.Criteria;
import com.theater.domain.PaymentsVO;

public interface PaymentsMapper {


  public List<PaymentsVO>getCashList(@Param("cri") Criteria cri,@Param("id")String id);
//전체 수
  public int getTotal(Criteria cri);

  public int insertPay(PaymentsVO pvo);
  
  public List<PaymentsVO> getListWithPaging(Criteria cri);
  public List<PaymentsVO>nextPage(int pay_cd);
  public List<PaymentsVO>prevPage(int pay_cd);
  
}//interface
