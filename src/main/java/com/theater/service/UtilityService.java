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
  
  public void actorsInsert(int c_cd);
  public void directorsInsert(int d_cd);
  public void nationInsert(int n_cd);
  public void genresInsert(int g_cd);
  
  public void actorsModify(int c_cd);
  public void directorsModify(int d_cd);
  public void nationModify(int n_cd);
  public void genresModify(int g_cd);
  
  public void actorsDelete(int c_cd);
  public void directorsDelete(int d_cd);
  public void nationDelete(int n_cd);
  public void genresDelete(int g_cd);
  
  
}
