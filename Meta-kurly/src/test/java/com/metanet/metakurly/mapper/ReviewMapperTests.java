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
		 
	@Test	//���� -> m_id �� 1�� ����� ���丸 ��������
	public void testGetMyReviewList() {
		mapper.getMyReviewList(1).forEach(review -> log.info(review));
	}
	
	
	@Test // ���� -> p_id �� 1 �� ��ǰ�� ���� ��������
	public void testGetProductReviewList() {
		mapper.getProductReviewList(5L).forEach(review -> log.info(review));
	}
	
	
	@Test // ����
	public void testRegisterReview() {
		ReviewDTO review = new ReviewDTO();
		
		review.setM_id(2L);
		review.setP_id(5L);
		review.setContents("������ ���� �׽�Ʈ�Դϴ�");
		
		mapper.registerReview(review);
		
		log.info(review);
	}
	
	@Test // ����
	public void testUpdateReview() {
		ReviewDTO review = new ReviewDTO();
		review.setContents("������Ʈ ���� �׽�Ʈ�Դϴ�.");
		review.setR_id(10L);
		review.setM_id(2L);
		review.setP_id(3L);

		
		int cnt = mapper.updateReview(review);
		log.info("UPDATE COUNT: " + cnt);
	}
	
	@Test // ���� -> r_id �� 4���� ���� ���� 
	public void testDelete() {
		ReviewDTO review = new ReviewDTO();
		review.setR_id(4L);
		review.setM_id(2L);
		review.setP_id(5L);
		
		mapper.deleteReview(review);
		
	}
}
