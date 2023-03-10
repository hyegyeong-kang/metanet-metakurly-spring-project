package com.metanet.metakurly.mapper;

import java.util.List;

import com.metanet.metakurly.domain.OrderDTO;

public interface OrderMapper {

	public List<OrderDTO> getOrderList(Long m_id);

	public OrderDTO getOrderDetail(Long o_id);

}
