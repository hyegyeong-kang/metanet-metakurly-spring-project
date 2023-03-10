package com.metanet.metakurly.service;

import java.util.List;

import com.metanet.metakurly.domain.OrderDTO;

public interface OrderService {
	public OrderDTO getByOid(Long o_id);
	public List<OrderDTO> getListByMid(Long m_id);

}
