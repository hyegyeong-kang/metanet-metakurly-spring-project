package com.metanet.metakurly.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.metanet.metakurly.domain.OrderDTO;
import com.metanet.metakurly.domain.OrderProductDTO;
import com.metanet.metakurly.domain.PaymentDTO;
import com.metanet.metakurly.mapper.OrderMapper;
import com.metanet.metakurly.mapper.PaymentMapper;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class OrderServiceImpl implements OrderService {
	
	@Autowired
	private OrderMapper mapper;
	
	@Autowired
	private PaymentMapper paymentMapper;

	@Override
	public OrderDTO getOrderDetailList(Long o_id) {
		log.info("get Service..." + o_id);
		return mapper.getOrderDetail(o_id);
	}

	@Override
	public List<OrderDTO> getOrderList(Long m_id) {
		log.info("getList Service...");
		List<OrderDTO> list = mapper.getOrderList(m_id);
		log.info(list);
		list.forEach(order -> order.setOrderDetailList(mapper.getOrderDetail(order.getO_id()).getOrderDetailList()));
		return list;
	}
	
	@Transactional
	@Override
	public void addOrder(OrderDTO order, PaymentDTO payment) {
		log.info("creatOrder Service...");
		mapper.createOrder(order);
		mapper.createOrderDetail(order);
		paymentMapper.createPayment(payment);
	}

	@Override
	public int cancelOrder(Long o_id) {
		log.info(mapper.getOrderDetail(o_id));
		return mapper.cancelOrder(o_id);
	}

	@Override
	public List<OrderProductDTO> getProductsInfo(List<OrderProductDTO> orderProducts) {
		List<OrderProductDTO> order = new ArrayList<>();
		
		log.info("$$$$$$$ " + orderProducts);
		for(OrderProductDTO product : orderProducts) {
			OrderProductDTO orderProduct = mapper.getProductInfo(product.getP_id());
			orderProduct.setQuantity(product.getQuantity());
			orderProduct.init();
			order.add(orderProduct);
		}
		
		return order;
	}

	@Override
	public PaymentDTO getPayment(Long o_id) {
		return paymentMapper.getPayment(o_id);
	}

	@Override
	public OrderDTO getOrder(Long o_id) {
		return mapper.getOrder(o_id);
	}

}
