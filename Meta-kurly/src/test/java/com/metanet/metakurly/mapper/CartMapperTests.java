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
	
//	@Test	// success // 1 보다 크면 해당상품 장바구니에 있는 것
//	public void testCheckCart() {
//		log.info("3333333333");
//		log.info("CHK: " + mapper.checkCart(1L, 3L));
//	}
	
//	@Test	// fail
//	public void testUpdateCount() {
//		
//		CartDTO cart = new CartDTO();
//		
//		cart.setM_id(3L);
//		cart.setP_id(5L);
//		cart.setQuantity(1L);
//		
//		mapper.updateCount(cart);
//		
//		log.info(cart);
//	}
	
//	@Test // success
//	public void testDeleteCart() {
//		
//		mapper.deleteCart(1L, 1L);
//	}
	
//	@Test  //fail
//	public void testDeleteAllCart() {
//		
//		mapper.deleteAllCart(3L);
//	}
	
//	@Test  // fail
//	public void testUpdateCart() {
//					
//		mapper.updateCart(5L, 3L, 9L);
//
//	}
	
	@Test
	public void testGetTotalPrice() {
		log.info("TOTAL: " + mapper.getTotalPrice(3L));
	}
	
	
	
	

}
