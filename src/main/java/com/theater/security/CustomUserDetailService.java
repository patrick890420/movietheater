package com.theater.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.theater.domain.MemberVO;
import com.theater.mapper.LoginMapper;
import com.theater.security.domain.CustomUser;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
public class CustomUserDetailService implements UserDetailsService { //UserDetailsService 사용, security-context에 bean 등록

	@Setter(onMethod_ = {@Autowired})
	private LoginMapper mapper;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		//	UserDetails 사용자의 정보와 권한 정보들을 담는 타입
		//	loadUserByUsername은 내부적으로 LoginMapper를 이용해서 MemberVO를 조회하고,
		//	만일 MemberVO의 인스턴스를 얻을수 있다면 , CustomUser 타입(smvo)의 객체로 변환해서 반환한다.
		
		/*
		 * CustomUserDetailsService는 스프링 시큐리티의
		 * UserDetailsService를 구현하고, LoginMapper타입의
		 * 인스턴스를 주입받아 실제 기능을 구현한다.
		 */
		
		MemberVO smvo = mapper.read(username);
		
		//		log.warn("smvo : "+smvo);
		
		/* 삼항연산자 조건식 ? 맞으면 이거 : 아니면 이거*/
		return smvo == null ? null : new CustomUser(smvo);
		//		return null;
	}

}
