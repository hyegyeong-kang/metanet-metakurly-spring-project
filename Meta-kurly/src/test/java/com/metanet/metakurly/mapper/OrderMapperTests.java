package com.metanet.metakurly.mapper;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.metanet.metakurly.domain.OrderDTO;
import com.metanet.metakurly.domain.OrderDetailDTO;
import com.metanet.metakurly.domain.ProductDTO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class OrderMapperTests {
	@Autowired
	private OrderMapper mapper;
	
	@Autowired
	private ProductMapper pMapper;
	
//	@Test
//	public void getDetailTest() {
////		mapper.getOrderDetail(3L).forEach(detail -> log.info(detail));
//		log.info(mapper.getOrderDetail(3L));
//	}
	
//	@Test
//	public void createOrderTest() {
//		OrderDTO order = new OrderDTO();
//		order.setM_id(1L);
//		OrderDetailDTO d1 = new OrderDetailDTO();
//		d1.setM_id(1L);
//		d1.setP_id(2L);
//		d1.setProductDTO(pMapper.read(2L));
//		d1.setQuantity(2);
//		OrderDetailDTO d2 = new OrderDetailDTO();
//		d2.setM_id(1L);
//		d2.setP_id(3L);
//		d2.setProductDTO(pMapper.read(3L));
//		d2.setQuantity(1);
//		List<OrderDetailDTO> detailList = new ArrayList<>();
//		detailList.add(d1);
//		detailList.add(d2);
//		order.setOrderDetailList(detailList);
//		mapper.createOrder(order);
//		mapper.createOrderDetail(order);
//		mapper.modifyOrder(order);
//		log.info(order);
//	}
	
	@Test
	public void cancelOrderTest() {
		log.info("주문 취소 Count : " + mapper.cancelOrder(2L));
	}
}
