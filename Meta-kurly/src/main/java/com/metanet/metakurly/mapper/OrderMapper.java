package com.metanet.metakurly.mapper;

import java.util.List;

import com.metanet.metakurly.domain.OrderDTO;

public interface OrderMapper {
	
	public List<OrderDTO> getListByMid(Long m_id);
	
	public OrderDTO readByOid(Long o_id);
	
}
