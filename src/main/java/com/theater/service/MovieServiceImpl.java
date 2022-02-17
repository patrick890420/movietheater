package com.theater.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.theater.domain.Criteria;
import com.theater.domain.MovieVO;
import com.theater.mapper.MovieMapper;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class MovieServiceImpl implements MovieService {
  private MovieMapper mapper;

  
  @Override
    public void MovieInsertPro(MovieVO mvo) {
    mapper.MovieInsertPro(mvo);
    
  }
  
  @Override
  public List<MovieVO> MovieList(Criteria cri) {
    
    return mapper.MovieListPaging(cri);
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
  public List<MovieVO> MovieSelect() {
    return mapper.MovieSelect();
  }

  @Override
  public List<MovieVO> MovieSelect(int m_cd) {
    // TODO Auto-generated method stub
    return null;
  }

}//Impl
