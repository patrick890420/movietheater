package com.theater.persistence;

import java.sql.Connection;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;


@RunWith(SpringJUnit4ClassRunner.class)
//현제 테스트코드가 스프링을 실행하는 역활을 할것임
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
//지정된 클래스나 문자열을 이용해서 필요한 객체들을 스프링 내에 객체로 등록하겠다.
@Log4j
public class ConnectionPoolTest {
	
	@Setter(onMethod_ = @Autowired )
	private DataSource datasource;
	@Test
	public void testConnection() {
		try {
			Connection conn = datasource.getConnection(); 
			
			log.info(conn);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
