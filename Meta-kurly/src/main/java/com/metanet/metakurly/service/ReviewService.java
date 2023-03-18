package com.metanet.metakurly.service;

import java.util.List;

import com.metanet.metakurly.domain.ProductDTO;
import com.metanet.metakurly.domain.ReviewDTO;

public interface ReviewService {
	
	public List<ReviewDTO> getMyReviewList(int m_id);
	
	public List<ProductDTO> getProductReviewList(Long p_id);
		
	public void registerReview(ReviewDTO review);	

	public int totalMyReviewList(int memberUid);
	
	public boolean updateReview(ReviewDTO review);
	
	public boolean deleteReview(ReviewDTO review);
	
}
