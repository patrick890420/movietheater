package com.theater.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.theater.domain.ActorsVO;
import com.theater.domain.DirectorsVO;
import com.theater.domain.GenresVO;
import com.theater.domain.NationVO;
import com.theater.mapper.CodeMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Service
@AllArgsConstructor
public class UtilityServiceImpl implements UtilityService {

  @Setter(onMethod_ = @Autowired)
  private CodeMapper cmapper;
  
  @Override
  public List<ActorsVO> getActorsList() {
    return cmapper.getActorsList();
  }

  @Override
  public List<DirectorsVO> getDitrectorsList() {
    return cmapper.getDirectorsList();
  }

  @Override
  public List<NationVO> getNationsList() {
    return cmapper.getNationList();
  }

  @Override
  public List<GenresVO> getGenresList() {
    return cmapper.getGenresList();
  }
  
  /* insert */
  @Override
  public void actorsInsert(ActorsVO avo) {
    cmapper.actorsInsert(avo);
  }

  @Override
  public void directorsInsert(DirectorsVO dvo) {
    cmapper.directorsInsert(dvo);
    
  }

  @Override
  public void nationInsert(NationVO nvo) {
    cmapper.nationInsert(nvo);
    
  }

  @Override
  public void genresInsert(GenresVO gvo) {
    cmapper.genresInsert(gvo);
    
  }
  /* end insert */
  

  @Override
  public void actorsDelete(String a_cd) {
    cmapper.actorsDelete(a_cd);
  }

  @Override
  public void directorsDelete(String d_cd) {
    cmapper.directorsDelete(d_cd);
  }

  @Override
  public void nationDelete(String n_cd) {
    cmapper.nationDelete(n_cd);
  }

  @Override
  public void genresDelete(String g_cd) {
    cmapper.genresDelete(g_cd);
  }

  @Override
  public void actorsModify(ActorsVO avo) {
    cmapper.actorsModify(avo);
    
  }

  @Override
  public void directorsModify(DirectorsVO dvo) {
    cmapper.directorsModify(dvo);
    
  }

  @Override
  public void nationModify(NationVO nvo) {
    cmapper.nationModify(nvo);
    
  }

  @Override
  public void genresModify(GenresVO gvo) {
    cmapper.genresModify(gvo);
    
  }

}
