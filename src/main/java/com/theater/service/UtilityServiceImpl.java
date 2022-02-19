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
  public void actorsModify(int c_cd) {
    // TODO Auto-generated method stub
    
  }

  @Override
  public void directorsModify(int d_cd) {
    // TODO Auto-generated method stub
    
  }

  @Override
  public void nationModify(int n_cd) {
    // TODO Auto-generated method stub
    
  }

  @Override
  public void genresModify(int g_cd) {
    // TODO Auto-generated method stub
    
  }

  @Override
  public void actorsDelete(int c_cd) {
    // TODO Auto-generated method stub
    
  }

  @Override
  public void directorsDelete(int d_cd) {
    // TODO Auto-generated method stub
    
  }

  @Override
  public void nationDelete(int n_cd) {
    // TODO Auto-generated method stub
    
  }

  @Override
  public void genresDelete(int g_cd) {
    // TODO Auto-generated method stub
    
  }

}
