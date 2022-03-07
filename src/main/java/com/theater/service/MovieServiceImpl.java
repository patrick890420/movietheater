package com.theater.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.theater.domain.CmtAVG;
import com.theater.domain.Criteria;
import com.theater.domain.FilmsVO;
import com.theater.domain.M_stillcutVO;
import com.theater.domain.MovieChartVO;
import com.theater.domain.MovieInfoVO;
import com.theater.domain.MovieSelectVO;
import com.theater.domain.MovieVO;
import com.theater.domain.ReviewVO;
import com.theater.mapper.MovieMapper;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class MovieServiceImpl implements MovieService {
  private MovieMapper mapper;

  
  @Override
    public void movieInsertPro(MovieVO mvo) {
    mapper.movieInsertPro(mvo);
  }
  
  @Override
  public List<MovieVO> movieList(Criteria cri) {
    
    return mapper.movieListPaging(cri);
  }
  
  @Override
  public MovieVO read(int m_cd) {
    mapper.read(m_cd);
    return mapper.read(m_cd);
  } 
  @Override
  public MovieVO nextPage(int m_cd) {
    return mapper.nextPage(m_cd);
  }                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
  @Override
  public MovieVO prevPage(int m_cd) {
    return mapper.prevPage(m_cd);
  }
  @Override
  public int getTotal(Criteria cri) {
    return mapper.getTotal(cri);
  }
  
  @Override
  public List<MovieVO> movieSelect() {
    return mapper.movieSelect();
  }

  @Override
  public List<MovieVO> movieSelect(int m_cd) {
    return mapper.movieSelect();
  }
  @Override
  public void movieInfoInsertPro(MovieInfoVO ivo) {
    mapper.movieInfoInsertPro(ivo);
  }

  @Override
  public MovieSelectVO adminMovieSelect(int m_cd) {
   return mapper.adminMovieSelect(m_cd);
  }
  
  @Override
  public M_stillcutVO movieStillcutSelect(int m_cd) {
    return mapper.movieStillcutSelect(m_cd);
  }
  
  @Override
  public void movieDelete(int m_cd) {
    mapper.movieDelete(m_cd);
  }
  
  @Override
  public int register(ReviewVO rvo) {
    return mapper.movieReviewInsert(rvo);
  }
  @Override
  public List<ReviewVO> get(int m_cd) {
    return mapper.movieReviewRead(m_cd);
  }
  @Override
  public int modify(ReviewVO rvo) {
    return mapper.movieReviewUpdate(rvo);
}
  @Override
  public int remove(int rcode) {
    return mapper.movieReviewDelete(rcode);
  }
  @Override
  public List<ReviewVO> getList(Criteria cri, int m_cd) {
    return mapper.getListWithPageing(cri, m_cd);
  }
  
  @Override
  public CmtAVG cmtAVG(int m_cd) {
    return mapper.cmtAVG(m_cd);
  }
  
  @Override
  public List<MovieVO> movieSelect1to5() {
    return mapper.movieSelect1to5();
  }
  
  @Override
  public List<MovieVO> movieSelect6to10() {
    return mapper.movieSelect6to10();
  }
  
  @Override
  public List<MovieVO> movieSelect11to15() {
    return mapper.movieSelect11to15();
  }
  
  @Override
  public List<MovieChartVO> movieChart(int m_cd) {
    return mapper.movieChart(m_cd);
  }
  
  @Override
  public List<FilmsVO> movieFilmsSelect() {
    return mapper.movieFilmsSelect();
  }
    @Override
  public List<FilmsVO> movieFilmsSelect2(int m_cd) {
    return mapper.movieFilmsSelect2(m_cd);
  }
    
 @Override
 public void moviefilmsUpdate(int m_cd, String film_status) {
    mapper.moviefilmsUpdate(m_cd,film_status);

 }

@Override
public List<MovieChartVO> getChart1(int m_cd) {
  
  return  mapper.getChart1(m_cd);
}

@Override
public List<MovieChartVO> getChart2(int m_cd) {
  return mapper.getChart2(m_cd);
}
}//Impl
