package com.metanet.metakurly.service;

import java.util.List;

import com.metanet.metakurly.domain.ReviewDTO;

public interface ReviewService {
	
	public ReviewDTO get(Long r_id);
	
	// ���� �ۼ�
	public void register(ReviewDTO review);	

	// ���� �� ���� ��� ��������
	public List<ReviewDTO> getList(int sessionId);
	
	// ���� �� ���� ���� ��������
	public int totalMyReviewList(int memberUid);
	
	// Ư�� ��ǰ ���� ����Ʈ
	public List<ReviewDTO> productReviewList(String name);
	
	
	// ���� �� ����
	public ReviewDTO update(Long r_id);
	
	// ���� �� ����
	public ReviewDTO delete(Long r_id);
	
	
	
}
