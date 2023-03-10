package com.metanet.metakurly.service;

import java.util.List;

import com.metanet.metakurly.domain.OrderDTO;
import com.metanet.metakurly.domain.OrderProductDTO;
import com.metanet.metakurly.domain.PaymentDTO;

public interface OrderService {
	
	public OrderDTO getOrder(Long m_id, Long o_id);
	
	public OrderDTO getOrderDetailList(Long o_id);
	
	public List<OrderDTO> getOrderList(Long m_id);
	
	public PaymentDTO getPayment(Long o_id);
	
	public List<OrderProductDTO> getProductsInfo(List<OrderProductDTO> orderProducts);
	
	public OrderProductDTO getProductInfo(OrderProductDTO orderProduct);
	
	public void addOrder(OrderDTO order, PaymentDTO payment);
	//public void addOrder(OrderProductDTO orderProduct);
	
	public int cancelOrder(Long o_id);
	
}
