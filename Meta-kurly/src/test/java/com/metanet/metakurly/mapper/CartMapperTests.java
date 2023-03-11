package com.metanet.metakurly.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.metanet.metakurly.domain.CartDTO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class CartMapperTests {
	
	@Autowired
	private CartMapper mapper;
	
//	@Test // success
//	public void testGetMyCartList() {
//		mapper.getMyCartList(1L).forEach(product -> log.info(product));
//	}
	
	
//	@Test  // success
//	public void testInsertCart() {
//		CartDTO cart = new CartDTO();
//		
//		cart.setM_id(1L);
//		cart.setP_id(1L);
//		cart.setQuantity(1L);
//		cart.setTotal_price(20000L);
//		
//		mapper.addCart(cart);
//		
//		log.info(cart);
//	}
	
	@Test
	public void testChcekCart() {
		log.info("3333333333");
		log.info("CHK: " + mapper.checkCart(5L, 3L));
	}

}
