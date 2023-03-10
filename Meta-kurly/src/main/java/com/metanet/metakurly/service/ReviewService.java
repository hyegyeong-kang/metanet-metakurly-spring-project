package com.metanet.metakurly.service;

import java.util.List;

import com.metanet.metakurly.domain.ReviewDTO;

public interface ReviewService {
	
	public ReviewDTO get(Long r_id);
	
	// 리뷰 작성
	public void register(ReviewDTO review);	

	// 내가 쓴 리뷰 목록 가져오기
	public List<ReviewDTO> getList(int sessionId);
	
	// 내가 쓴 리뷰 갯수 가져오기
	public int totalMyReviewList(int memberUid);
	
	// 특정 상품 리뷰 리스트
	public List<ReviewDTO> productReviewList(String name);
	
	
	// 리뷰 글 수정
	public ReviewDTO update(Long r_id);
	
	// 리뷰 글 삭제
	public ReviewDTO delete(Long r_id);
	
	
	
}
