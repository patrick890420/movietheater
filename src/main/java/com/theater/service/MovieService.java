package com.theater.service;


import java.util.List;

import com.theater.domain.CmtAVG;
import com.theater.domain.Criteria;
import com.theater.domain.FilmsVO;
import com.theater.domain.M_stillcutVO;
import com.theater.domain.MovieChartVO;
import com.theater.domain.MovieInfoVO;
import com.theater.domain.MovieSelectVO;
import com.theater.domain.MovieVO;
import com.theater.domain.ReviewVO;



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
  public MovieSelectVO adminMovieSelect(int m_cd);
  public M_stillcutVO movieStillcutSelect(int m_cd);
  public void movieDelete(int m_cd);
  
  public int register(ReviewVO rvo);
  public List<ReviewVO> get(int m_cd);
  public int modify(ReviewVO rvo);
  public int remove(int rcode);
  public List<ReviewVO> getList(Criteria cri, int m_cd);
  public CmtAVG cmtAVG(int m_cd);
  
  public List<MovieVO>movieSelect1to5();
  public List<MovieVO> movieSelect6to10();
  public List<MovieVO>movieSelect11to15();

  public List<MovieChartVO> movieChart(int m_cd);
  public List<FilmsVO> movieFilmsSelect();
  public FilmsVO movieFilmsSelect2(int m_cd);
  public void moviefilmsUpdate(int m_cd,String film_status);
}
