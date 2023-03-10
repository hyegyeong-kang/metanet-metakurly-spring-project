package com.metanet.metakurly.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.metanet.metakurly.domain.ReviewDTO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ReviewServiceTests {
	
	@Autowired
	ReviewService service;
	
	@Test
	public void testGetMyReview() {
		
		service.getMyReviewList(1).forEach(review -> log.info(review));
	}
 
	
//	// 실패
//	@Test
//	public void testRegister() {
//		ReviewDTO review = new ReviewDTO();
//		review.setContents("맛있어요..");
//		review.setM_id(2L);
//		review.setP_id(1L);
//		
//		service.register(review);
//		
//		//log.info("생성된 게시물의 번호:" + review.getR_id());
//	}
	
	
//	@Test  // 성공
//	public void testUpdateReview() {
//		ReviewDTO review = new ReviewDTO();
//		review.setContents("서비스 업데이트 테스트");
//		review.setM_id(1L);
//		review.setP_id(1L);
//		
//		service.updateReview(review);
//	}

	
}
