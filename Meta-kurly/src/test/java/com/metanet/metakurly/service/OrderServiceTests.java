package com.metanet.metakurly.service;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.metanet.metakurly.domain.OrderDTO;
import com.metanet.metakurly.domain.OrderDetailDTO;
import com.metanet.metakurly.domain.PaymentDTO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class OrderServiceTests {
	
	@Autowired
	private OrderService service;
	
	@Autowired
	private ProductService pService;
	
//	@Test
//	public void getOrderTest() {
//		service.getOrderList(1L).forEach(order -> log.info(order));
//	}
//	
//	@Test
//	public void getOrderDetailTest() {
//		log.info(service.getOrderDetailList(3L));
//	}
	
	@Test
	public void createOrderTest() {
		OrderDTO order = new OrderDTO();
		order.setM_id(2L);
		OrderDetailDTO d1 = new OrderDetailDTO();
		d1.setM_id(2L);
		d1.setP_id(1L);
		d1.setProductDTO(pService.get(1L));
		d1.setQuantity(1);
		OrderDetailDTO d2 = new OrderDetailDTO();
		d2.setM_id(2L);
		d2.setP_id(5L);
		d2.setProductDTO(pService.get(5L));
		d2.setQuantity(1);
		List<OrderDetailDTO> detailList = new ArrayList<>();
		detailList.add(d1);
		detailList.add(d2);
		order.setOrderDetailList(detailList);
		PaymentDTO payment = new PaymentDTO();
//		payment.setMethod("적립금");
		payment.setPayment_amount(0);
		service.addOrder(order, payment);
		log.info(order);
		log.info(payment);
	}
	
//	@Test
//	public void cancleOrderTest() {
//		Long orderId = 1L;
//		OrderDTO order = service.getOrderDetailList(orderId);
//		
//		if(order == null)
//			return;
//		
//		log.info(service.cancelOrder(orderId));
//	}
}
