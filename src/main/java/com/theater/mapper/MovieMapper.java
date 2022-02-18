package com.theater.mapper;

import java.util.List;

import com.theater.domain.Criteria;
import com.theater.domain.MovieInfoVO;
import com.theater.domain.MovieVO;

public interface MovieMapper {

  public void movieInsertPro(MovieVO mvo);
  
  public List<MovieVO> movieList();
  
  public List<MovieVO> movieSelect();
  
  public MovieVO read(int m_cd);
  
  public void readCount(int m_cd);
  
  public List<MovieVO> movieListPaging(Criteria cri);
  
  public int getTotal(Criteria cri);
  
  public MovieVO nextPage(int m_cd);
  
  public MovieVO prevPage(int m_cd);
  
  public void movieInfoInsertPro(MovieInfoVO ivo);
  
  //view  페이지
  
  
  //Info

}
