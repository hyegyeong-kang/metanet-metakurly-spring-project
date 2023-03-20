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
		 
//	@Test	//���� -> m_id �� 1�� ����� ���丸 ��������
//	public void testGetMyReviewList() {
//		mapper.getMyReviewList(1).forEach(review -> log.info(review));
//	}
	
	
	@Test // ���� -> p_id �� 1 �� ��ǰ�� ���� ��������
	public void testGetProductReviewList() {
		mapper.getProductReviewList(1L).forEach(review -> log.info(review));
	}
	
	
//	@Test // ����
//	public void testRegisterReview() {
//		ReviewDTO review = new ReviewDTO();
//		
//		review.setM_id(1L);
//		review.setP_id(2L);
//		review.setContents("새로 등록한 리뷰입니다.");
//		
//		mapper.registerReview(review);
//		
//		log.info(review);
//	}
//	
//	@Test // ����
//	public void testUpdateReview() {
//		ReviewDTO review = new ReviewDTO();
//		review.setContents("수정한 리뷰입니.");
//		review.setR_id(62L);
//		review.setM_id(1L);
//		review.setP_id(2L);
//
//		
//		int cnt = mapper.updateReview(review);
//		log.info("UPDATE COUNT: " + cnt);
//	}
//	
//	@Test // ���� -> r_id �� 4���� ���� ���� 
//	public void testDelete() {
//		ReviewDTO review = new ReviewDTO();
//		review.setR_id(62L);
//		review.setM_id(1L);
//		review.setP_id(2L);
//		
//		mapper.deleteReview(review);
//		
//	}
}
