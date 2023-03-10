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
		 
//	@Test	//성공 -> m_id 가 1인 사람의 리뷰만 가져오기
//	public void testGetMyReviewList() {
//		mapper.getMyReviewList(1).forEach(review -> log.info(review));
//	}
	
	@Test // 성공 -> p_id 가 1 인 상품의 리뷰 가져오기
	public void testGetProductReviewList() {
		mapper.getProductReviewList(5L).forEach(review -> log.info(review));
	}
	
	// 성공
//	@Test
//	public void testInsert() {
//		ReviewDTO review = new ReviewDTO();
//		
//		review.setM_id(2L);
//		review.setP_id(5L);
//		review.setContents("존맛탱입니다.!");
//		
//		mapper.insert(review);
//		
//		log.info(review);
//	}
	
//	@Test
//	public void testUpdate() {
//		ReviewDTO review = new ReviewDTO();
//		review.setContents("업데이트 내용");
//		review.setM_id(1L);
//		review.setP_id(1L);
//
//		
//		int cnt = mapper.updateReview(review);
//		log.info("UPDATE COUNT: " + cnt);
//	}
	
//	@Test
//	public void testDelete() {
//		mapper.deleteReview(1L);
//		
//	}
}
