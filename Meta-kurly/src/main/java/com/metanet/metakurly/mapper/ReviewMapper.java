package com.metanet.metakurly.mapper;

import java.util.List;

import com.metanet.metakurly.domain.ReviewDTO;

public interface ReviewMapper {
	
	// 내가 작성한 리뷰 리스트 가져오기
	public List<ReviewDTO> getMyReviewList(int m_id);
	
	// 특정 상품에 해당하는 리뷰 리스트 가져오기
	public List<ReviewDTO> getProductReviewList(Long p_id);
	
	// 내가 구매한 상품 리뷰 작성하기
	public void registerReview(ReviewDTO review);
	
	// 내가 구매한 상품 리뷰 수정하기
	public int updateReview(ReviewDTO review);
	
	// 내가 구매해서 작성한 리뷰 삭제하기
	public boolean deleteReview(ReviewDTO review);
}
