package com.metanet.metakurly.mapper;

import java.util.List;

import com.metanet.metakurly.domain.ReviewDTO;

public interface ReviewMapper {
	
	public List<ReviewDTO> getList();
	
	public void insert(ReviewDTO review);
}
