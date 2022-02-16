package com.theater.mapper;

import java.util.List;

import com.theater.domain.ActorsVO;
import com.theater.domain.DirectorsVO;
import com.theater.domain.GenresVO;
import com.theater.domain.NationVO;

public interface CodeMapper {

  public List<ActorsVO> getActorsList();
  public List<DirectorsVO> getDirectorsList();
  public List<NationVO> getNationList();
  public List<GenresVO> getGenresList();
  
}
