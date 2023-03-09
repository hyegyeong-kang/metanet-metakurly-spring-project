package com.metanet.metakurly.mapper;

import java.util.List;

import com.metanet.metakurly.domain.OrderDetailDTO;

public interface OrderDetailMapper {
	
	public List<OrderDetailDTO> getList(Long o_id);
	
	public void insert(OrderDetailDTO dto);
	
}
