package com.metanet.metakurly.service;

import java.util.List;

import com.metanet.metakurly.domain.ProductDTO;
import com.metanet.metakurly.domain.ReviewDTO;

public interface ReviewService {
	
	// ���� �ۼ��� ���� ����Ʈ ��������
	public List<ReviewDTO> getMyReviewList(int m_id);
	
	// Ư�� ��ǰ�� �ش��ϴ� ���� ����Ʈ ��������
	public List<ProductDTO> getProductReviewList(Long p_id);
		
	// ���� ������ ��ǰ ���� �ۼ��ϱ�
	public void registerReview(ReviewDTO review);	

	// ���� �� ���� ���� ��������
	public int totalMyReviewList(int memberUid);
	
	// ���� ������ ��ǰ ���� �����ϱ�
	public boolean updateReview(ReviewDTO review);
	
	// ���� �����ؼ� �ۼ��� ���� �����ϱ�
	public boolean deleteReview(ReviewDTO review);
	
	
	
}
