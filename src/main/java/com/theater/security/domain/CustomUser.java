package com.theater.security.domain;

import java.util.Collection;
import java.util.stream.Collectors;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import com.theater.domain.MemberVO;

import lombok.Getter;

@Getter
public class CustomUser extends User {
//	UserDetailsService는 loadUserByUsername()라는 하나의 추상메서드만을 가지고 있으며,
//	모든 작업에 문제가 없다면 최종적으로 MemberVO의 인스턴스를 스프링 시큐티리의 
//	UserDetails 타입으로 변환하는 작업을 처리해야한다.
//	CustomUser는 User클래스를 상속하기댸문에 , 부모 클래스의 생성자를 호출해야만 정상적인 객체 생성가능.
//	MemberVO를 파라미터로 전달해서 User 클래스에 맞게 생성자 호출,
//	이과정에서 AuthVO 인스턴스는 GrantedAuthority 객체로 변환해야하므로, stream()과 map()을 이용해 처리함.
	
	 private static final long serialVersionUID = 1L;
	    
	    private MemberVO member;
	    
	    public CustomUser(String username,String password, Collection<? extends GrantedAuthority> authorities) {
	        super(username, password, authorities); //user 클래스를 상속하기 때문에 부모 클래스 생성자를 호출해야 정상적인 객체 생성가능.
	    }

	    // AuthVO 인스턴스는 GrantedAuthority 객체로 변환해야하므로, stream()과 map()을 이용해 처리.
	    public CustomUser(MemberVO vo) {  //CustomUserDetailService에서 vo넘어옴
	        super(vo.getId(), vo.getPwd(), vo.getAuthList().stream().map(auth ->
	        	new SimpleGrantedAuthority(auth.getAuth())).collect(Collectors.toList()));
	        //다수의(3) 권한이 Collectors 타입으로 

	        this.member = vo;//vo를 member에 담아 리턴
	    }
}


