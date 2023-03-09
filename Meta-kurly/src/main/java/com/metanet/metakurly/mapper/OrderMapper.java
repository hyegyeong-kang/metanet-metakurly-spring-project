package com.metanet.metakurly.mapper;

import java.util.List;

import com.metanet.metakurly.domain.OrderDTO;

public interface OrderMapper {
	
	public List<OrderDTO> getList();
	
	public OrderDTO read(Long o_id);
	
}
