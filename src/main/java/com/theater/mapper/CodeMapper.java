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
  
  public void actorsDelete(String a_cd); 
  public void directorsDelete(String d_cd); 
  public void nationDelete(String n_cd); 
  public void genresDelete(String g_cd); 
  
  public void actorsModify(ActorsVO avo); 
  public void directorsModify(DirectorsVO dvo); 
  public void nationModify(NationVO nvo); 
  public void genresModify(GenresVO gvo);
  
}
