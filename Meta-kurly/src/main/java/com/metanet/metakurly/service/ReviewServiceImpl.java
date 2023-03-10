package com.metanet.metakurly.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.metanet.metakurly.domain.ReviewDTO;
import com.metanet.metakurly.mapper.ReviewMapper;

public class ReviewServiceImpl implements ReviewService {
	
	@Autowired
	private ReviewMapper mapper;

	@Override
	public ReviewDTO get(Long r_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void register(ReviewDTO review) {
		mapper.insert(review);
	}

	@Override
	public List<ReviewDTO> getList(int sessionId) {
		return mapper.getList();
	}

	@Override
	public int totalMyReviewList(int memberUid) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<ReviewDTO> productReviewList(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ReviewDTO update(Long r_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ReviewDTO delete(Long r_id) {
		// TODO Auto-generated method stub
		return null;
	}

}
