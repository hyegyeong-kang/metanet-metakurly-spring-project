package com.metanet.metakurly.mapper;

import java.util.List;

import com.metanet.metakurly.domain.OrderDTO;
import com.metanet.metakurly.domain.OrderProductDTO;

public interface OrderMapper {

	public List<OrderDTO> getOrderList(Long m_id);

	public OrderDTO getOrderDetail(Long o_id);
	
	public OrderProductDTO getProductInfo(Long p_id);
	
	public void createOrderDetail(OrderDTO order);
	public void createOrder(OrderDTO order);
	public void modifyOrder(OrderDTO order);
	
	public int cancelOrder(Long o_id);
}
