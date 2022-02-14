package com.theater.security;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

public class CustomLoginSuccessHandler implements AuthenticationSuccessHandler {
	/* 회원가입 계정 로그인후 인덱스 페이지로 이동 한다거나, 관리자 로그인후 /adm/adminManager로 이동하도록 구현하는 클래스 */
	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication auth) throws IOException, ServletException {
		/* Authentication는 로그인한 사용자의 권한 객체를 문자열로 체크 */
		
		List<String> roleNames = new ArrayList<>();
		auth.getAuthorities().forEach(authority ->{
			roleNames.add(authority.getAuthority());
		});
		
		/*  권한 admin,user, member 3개 */
		if (roleNames.contains("ROLE_ADMIN")) { 
			response.sendRedirect("/adm/adminManager");
			return;
		}
		
		if(roleNames.contains("ROLE_MEMBER")) {
			response.sendRedirect("/");
			return;
		}
		
		response.sendRedirect("/");
	}

}
