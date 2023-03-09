package com.metanet.metakurly.service;

import static org.junit.Assert.assertNotNull;

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
public class MemberServiceTests {
	
	@Setter(onMethod_ = @Autowired)
	private MemberService service;
	
//	@Test
//	public void testExist() {
//		log.info(service);
//		assertNotNull(service);
//	}
	
//	@Test
//	public void testSignUp() {
//		MemberDTO member = new MemberDTO();
//		member.setUserId("user034");
//		member.setPassword("1234");
//		member.setName("오길동");
//		member.setEmail("oh@meta.net");
//		member.setPhone("010-5678-9101");
//		member.setAddress("서울 노원구");
//		
//		service.register(member);
//		
//		log.info("생성된 회원의 번호: " + member.getM_id());
//	}
}
