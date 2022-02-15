package com.theater.mapper;

import java.util.List;

import com.theater.domain.Criteria;
import com.theater.domain.MovieVO;

public interface MovieMapper {

  public void MovieInsertPro(MovieVO mvo);
  
  public List<MovieVO> MovieList();
  
  public MovieVO read(int m_cd);
  
  public void readCount(int m_cd);
  
  public List<MovieVO> MovieListPaging(Criteria cri);
  
  public int getTotalCount(Criteria cri);
  
  public MovieVO nextPage(int m_cd);
  
  public MovieVO prevPage(int m_cd);
}
