package com.theater.service;

import java.util.List;

import com.theater.domain.ActorsVO;
import com.theater.domain.DirectorsVO;
import com.theater.domain.GenresVO;
import com.theater.domain.NationVO;

public interface UtilityService {

  public List<ActorsVO> getActorsList();         //영화배우리스트
  public List<DirectorsVO> getDitrectorsList();  //영화감독리스트
  public List<NationVO> getNationsList();        //국가리스트
  public List<GenresVO> getGenresList();         //장르리스트
  
  public ActorsVO getActorsView(int a_cd);         //배우 정보
  public DirectorsVO getDirectorsView(int d_cd);         //배우 정보
  public NationVO getNationVOView(int n_cd);         //배우 정보
  public GenresVO getGenresView(int g_cd);         //배우 정보
}
