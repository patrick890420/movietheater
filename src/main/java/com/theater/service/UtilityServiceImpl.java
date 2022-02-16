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

  @Override
  public ActorsVO getActorsView(int a_cd) {
    return cmapper.getActorsView(a_cd);
  }

  @Override
  public DirectorsVO getDirectorsView(int d_cd) {
    // TODO Auto-generated method stub
    return null;
  }

  @Override
  public NationVO getNationVOView(int n_cd) {
    // TODO Auto-generated method stub
    return null;
  }

  @Override
  public GenresVO getGenresView(int g_cd) {
    // TODO Auto-generated method stub
    return null;
  }

}
