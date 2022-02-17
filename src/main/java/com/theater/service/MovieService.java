package com.theater.service;


import java.util.List;


import com.theater.domain.Criteria;
import com.theater.domain.MovieVO;



public interface MovieService {
  
  public void MovieInsertPro(MovieVO mvo); 
  public List<MovieVO> MovieList(Criteria cri);
  public List<MovieVO> MovieSelect();
  public MovieVO read(int m_cd);
  public int getTotal(Criteria cri);
  public MovieVO nextPage(int m_cd);
  public MovieVO prevPage(int m_cd);
  List<MovieVO> MovieSelect(int m_cd);
}
