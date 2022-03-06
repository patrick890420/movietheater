package com.theater.mapper;

import java.util.List;

import com.theater.domain.AdminChartVO;
import com.theater.domain.AdminVO;

public interface UtilityMapper {

  public AdminChartVO getChart1(); 
  public List<AdminChartVO> getChart2(); 
  public List<AdminChartVO> getChart3(); 
  public AdminVO getAdminInfo(); 
}
