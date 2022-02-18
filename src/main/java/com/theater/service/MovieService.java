package com.theater.service;


import java.util.List;

import com.theater.domain.Criteria;
import com.theater.domain.MovieInfoVO;
import com.theater.domain.MovieVO;



public interface MovieService {
  
  public void movieInsertPro(MovieVO mvo); 
  public List<MovieVO> movieList(Criteria cri);
  public List<MovieVO> movieSelect();
  public MovieVO read(int m_cd);
  public int getTotal(Criteria cri);
  public MovieVO nextPage(int m_cd);
  public MovieVO prevPage(int m_cd);
  public List<MovieVO> movieSelect(int m_cd);
  public void movieInfoInsertPro(MovieInfoVO ivo);
}
