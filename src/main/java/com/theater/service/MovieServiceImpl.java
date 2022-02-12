package com.theater.service;

import org.springframework.stereotype.Service;

import com.theater.domain.MovieVO;
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

}//Impl
