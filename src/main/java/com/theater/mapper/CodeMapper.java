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
 
  public ActorsVO getActorsView(int a_cd);
  public DirectorsVO getDirectorsView(int d_cd);
  public NationVO getNationView(int n_cd);
  public GenresVO getGenresView(int g_cd);
  
  public void actorsInsert(ActorsVO avo); 
  public void directorsInsert(DirectorsVO dvo); 
  public void nationInsert(NationVO nvo); 
  public void genresInsert(GenresVO gvo); 
  
  public void actorsDelete(int a_cd); 
  public void directorsDelete(int d_cd); 
  public void nationDelete(int n_cd); 
  public void genresDelete(int g_cd); 
  
  public void actorsModify(int a_cd); 
  public void directorsModify(int d_cd); 
  public void nationModify(int n_cd); 
  public void genresModify(int g_cd);
  
}
