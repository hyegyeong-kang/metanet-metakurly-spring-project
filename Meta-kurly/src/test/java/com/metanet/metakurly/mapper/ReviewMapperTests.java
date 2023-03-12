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
	
	@Autowired
	private ReviewMapper mapper;
		 
	@Test	//성공 -> m_id 가 1인 사람의 리뷰만 가져오기
	public void testGetMyReviewList() {
		mapper.getMyReviewList(1).forEach(review -> log.info(review));
	}
	
	
	@Test // 성공 -> p_id 가 1 인 상품의 리뷰 가져오기
	public void testGetProductReviewList() {
		mapper.getProductReviewList(5L).forEach(review -> log.info(review));
	}
	
	
	@Test // 성공
	public void testRegisterReview() {
		ReviewDTO review = new ReviewDTO();
		
		review.setM_id(2L);
		review.setP_id(5L);
		review.setContents("리뷰등록 매퍼 테스트입니다");
		
		mapper.registerReview(review);
		
		log.info(review);
	}
	
	@Test // 성공
	public void testUpdateReview() {
		ReviewDTO review = new ReviewDTO();
		review.setContents("업데이트 매퍼 테스트입니다.");
		review.setR_id(10L);
		review.setM_id(2L);
		review.setP_id(3L);

		
		int cnt = mapper.updateReview(review);
		log.info("UPDATE COUNT: " + cnt);
	}
	
	@Test // 성공 -> r_id 가 4번인 리뷰 삭제 
	public void testDelete() {
		ReviewDTO review = new ReviewDTO();
		review.setR_id(4L);
		review.setM_id(2L);
		review.setP_id(5L);
		
		mapper.deleteReview(review);
		
	}
}
