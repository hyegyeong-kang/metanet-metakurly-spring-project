package com.metanet.metakurly.mapper;

import java.util.List;

import com.metanet.metakurly.domain.ReviewDTO;

public interface ReviewMapper {
	
	// ���� �ۼ��� ���� ����Ʈ ��������
	public List<ReviewDTO> getMyReviewList(int m_id);
	
	// Ư�� ��ǰ�� �ش��ϴ� ���� ����Ʈ ��������
	public List<ReviewDTO> getProductReviewList(Long p_id);
	
	// ���� ������ ��ǰ ���� �ۼ��ϱ�
	public void registerReview(ReviewDTO review);
	
	// ���� ������ ��ǰ ���� �����ϱ�
	public int updateReview(ReviewDTO review);
	
	// ���� �����ؼ� �ۼ��� ���� �����ϱ�
	public boolean deleteReview(Long r_id);
}
