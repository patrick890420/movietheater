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
  
  public void actorsInsert(ActorsVO avo);
  public void directorsInsert(DirectorsVO dvo);
  public void nationInsert(NationVO nvo);
  public void genresInsert(GenresVO gvo);
  
  public void actorsModify(int a_cd);
  public void directorsModify(int d_cd);
  public void nationModify(int n_cd);
  public void genresModify(int g_cd);
  
  public void actorsDelete(int a_cd);
  public void directorsDelete(int d_cd);
  public void nationDelete(int n_cd);
  public void genresDelete(int g_cd);
  
  
}
