package com.metanet.metakurly.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.web.context.WebApplicationContext;

import com.metanet.metakurly.domain.MemberDTO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MemberMapperTests {
	
	@Setter(onMethod_ = @Autowired)
	WebApplicationContext ctx;
	
	private MockMvc mock;
	
	
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
	
	@Test
	public void testModify() throws Exception {
		String resultPage = mock
				.perform(MockMvcRequestBuilders.post("/member/delete")
				.param("m_id", "23")
				.param("status", "delete"))
				.andReturn().getModelAndView().getViewName();
				
		log.info(resultPage);
	}
	
}

