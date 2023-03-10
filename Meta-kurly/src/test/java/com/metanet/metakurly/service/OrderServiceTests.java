package com.metanet.metakurly.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.metanet.metakurly.domain.OrderDTO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class OrderServiceTests {
	
	@Autowired
	private OrderService service;
	
	@Test
	public void getOrderTest() {
		service.getOrderList(1L).forEach(order -> log.info(order));
	}
	
	@Test
	public void getOrderDetailTest() {
		log.info(service.getOrderDetailList(3L));
	}
}
