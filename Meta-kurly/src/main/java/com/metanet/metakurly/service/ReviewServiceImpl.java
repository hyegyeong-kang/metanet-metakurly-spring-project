package com.metanet.metakurly.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.metanet.metakurly.domain.ReviewDTO;
import com.metanet.metakurly.mapper.ReviewMapper;


@Service
public class ReviewServiceImpl implements ReviewService {
	
	@Autowired
	private ReviewMapper mapper;

	// 내가 작성한 리뷰 리스트 가져오기
	@Override
	public List<ReviewDTO> getMyReviewList(int u_id) {
		return mapper.getMyReviewList(u_id);
	}
	
	// 특정 상품에 해당하는 리뷰 리스트 가져오기
	@Override
	public List<ReviewDTO> getProductReviewList(Long p_id) {
		return mapper.getProductReviewList(p_id);
	}
		
		
	// 내가 구매한 상품 리뷰 작성하기
	@Override
	public void registerReview(ReviewDTO review) {
		mapper.registerReview(review);
	}
	
	
	// 내가 쓴 리뷰 갯수 가져오기
	@Override
	public int totalMyReviewList(int memberUid) {
		// TODO Auto-generated method stub
		return 0;
	}

	
	// 내가 구매한 상품 리뷰 수정하기
	@Override
	public boolean updateReview(ReviewDTO review) {
		return mapper.updateReview(review) == 1;
	}

	
	// 내가 구매해서 작성한 리뷰 삭제하기
	@Override
	public boolean deleteReview(ReviewDTO review) {
		return mapper.deleteReview(review);
	}

}
