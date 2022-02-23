package com.theater.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

import com.theater.domain.Criteria;
import com.theater.domain.M_stillcutVO;
import com.theater.domain.MovieInfoVO;
import com.theater.domain.MovieSelectVO;
import com.theater.domain.MovieVO;
import com.theater.domain.ReviewVO;

public interface MovieMapper {

  public void movieInsertPro(MovieVO mvo);
  
  public List<MovieVO> movieList();
  
  public List<MovieVO> movieSelect();
  
  public MovieVO read(int m_cd);
  
  public void readCount(int m_cd);
  
  public List<MovieVO> movieListPaging(Criteria cri);
  
  public int getTotal(Criteria cri);
  
  public MovieVO nextPage(int m_cd);
  
  public MovieVO prevPage(int m_cd);
  
  public void movieInfoInsertPro(MovieInfoVO ivo);
  
  public MovieSelectVO adminMovieSelect(int m_cd);
  
  public M_stillcutVO movieStillcutSelect(int m_cd);
  
  public void movieDelete(int m_cd);
  
  //댓글
  public int movieReviewInsert(ReviewVO rvo);
  public List<ReviewVO> movieReviewRead(int m_cd);
  public int movieReviewDelete(int rcode);
  public int movieReviewUpdate(ReviewVO rvo);
  public List<ReviewVO> getListWithPageing (
      @Param("cri") Criteria cri,
      @Param("m_cd") int m_cd);
  
  //view  페이지
  public double cmtAVG(int m_cd);
  
  
  //Info

}
