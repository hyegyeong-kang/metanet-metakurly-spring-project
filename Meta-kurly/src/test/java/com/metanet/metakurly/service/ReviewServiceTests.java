package com.metanet.metakurly.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.metanet.metakurly.domain.ProductDTO;
import com.metanet.metakurly.domain.ReviewDTO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ReviewServiceTests {
	
	@Autowired
	ReviewService service;
//	
//	@Test
//	public void testGetMyReview() {
//		
//		service.getMyReviewList(1).forEach(review -> log.info(review));
//	}
 
	
//	// ����
//	@Test
//	public void testRegister() {
//		ReviewDTO review = new ReviewDTO();
//		review.setContents("���־��..");
//		review.setM_id(2L);
//		review.setP_id(1L);
//		
//		service.register(review);
//		
//		//log.info("������ �Խù��� ��ȣ:" + review.getR_id());
//	}
	
	
//	@Test  // ����
//	public void testUpdateReview() {
//		ReviewDTO review = new ReviewDTO();
//		review.setContents("���� ������Ʈ �׽�Ʈ");
//		review.setM_id(1L);
//		review.setP_id(1L);
//		service.updateReview(review);
//	}
	
	@Test
	public void testGetProductReviewList() {
		log.info("결과 : " + service.getProductReviewList(3L));
	}

	
}
