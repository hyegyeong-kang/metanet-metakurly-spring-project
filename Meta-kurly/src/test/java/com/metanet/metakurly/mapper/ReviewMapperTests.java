package com.metanet.metakurly.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.metanet.metakurly.domain.ReviewDTO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ReviewMapperTests {
	
	@Setter(onMethod_ = @Autowired)
	private ReviewMapper mapper;
	
//	@Test
//	public void testGetList() {
//		mapper.getList().forEach(review -> log.info(review));
//	}
	
	@Test
	public void testInsert() {
		ReviewDTO review = new ReviewDTO();
		
		review.setM_id(2L);
		review.setP_id(5L);
		review.setContents("¡∏∏¿≈ ¿‘¥œ¥Ÿ.!");
		
		mapper.insert(review);
		
		log.info(review);
	}
}
