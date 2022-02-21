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
  
  public void actorsModify(ActorsVO avo);
  public void directorsModify(DirectorsVO dvo);
  public void nationModify(NationVO nvo);
  public void genresModify(GenresVO gvo);
  
  public void actorsDelete(String a_cd);
  public void directorsDelete(String d_cd);
  public void nationDelete(String n_cd);
  public void genresDelete(String g_cd);
  
  
}
