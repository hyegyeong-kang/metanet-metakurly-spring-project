package com.metanet.metakurly.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.metanet.metakurly.domain.MemberDTO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MemberMapperTests {
	
	@Setter(onMethod_ = @Autowired)
	MemberMapper mapper;
	
	
//	@Test
//	public void testGetList() {
//		mapper.getList().forEach(member -> log.info(member));
//	}
	
//	@Test
//	public void testSignUp() {
//		MemberDTO member = new MemberDTO();
//		member.setUserId("user03");
//		member.setPassword("1234");
//		member.setName("박길동");
//		member.setEmail("park@meta.net");
//		member.setPhone("010-4567-8910");
//		member.setAddress("서울 종로구");
//		
//		mapper.register(member);
//		
//		log.info(member);
//	}
	
	
	
	
}

