package com.theater.domain;

import lombok.Data;

@Data
public class MovieSelectVO {

  private int  m_cd;
  private String title;
  private String subtitle;
  private String rdate;
  private String rtime;
  private String rate;
  private String intro;
  private String poster;
  
  private String a_cd; //배우코드
  private String a_name;  //배우이름
  private String m_a_cd;  //배우매칭코드
  
  private String d_cd; //감독코드
  private String d_name;  //감독이름
  private String m_d_cd;  //감독매칭코드
  
  private String g_cd; //장르코드
  private String g_name;  //장르이름
  private String m_g_cd;  //장르매칭코드 
  
  private String n_cd; //국가코드
  private String n_name;  //국가이름
  private String m_n_cd;  //국가매칭코드
  
  
}
