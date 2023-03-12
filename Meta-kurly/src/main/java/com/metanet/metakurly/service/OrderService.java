package com.metanet.metakurly.service;

import java.util.List;

import com.metanet.metakurly.domain.OrderDTO;
import com.metanet.metakurly.domain.OrderProductDTO;
import com.metanet.metakurly.domain.PaymentDTO;

public interface OrderService {
	
	public OrderDTO getOrderDetailList(Long o_id);
	
	public List<OrderDTO> getOrderList(Long m_id);
	
	public List<OrderProductDTO> getProductInfo(List<OrderProductDTO> orderProducts);
	
	public void addOrder(OrderDTO order, PaymentDTO payment);
	
	public int cancelOrder(Long o_id);
	
}
