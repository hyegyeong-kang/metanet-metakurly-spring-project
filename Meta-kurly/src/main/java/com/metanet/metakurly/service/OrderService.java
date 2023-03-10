package com.metanet.metakurly.service;

import java.util.List;

import com.metanet.metakurly.domain.OrderDTO;

public interface OrderService {
	public OrderDTO getOrderDetailList(Long o_id);
	public List<OrderDTO> getOrderList(Long m_id);

}
