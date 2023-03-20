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
//		cart.setM_id(9L);
//		cart.setP_id(9L);
//		cart.setQuantity(6L);
//		
//		mapper.addCart(cart);
//		
//		log.info(cart);
//	}
	
//	@Test	// success // 1 蹂대떎 �겕硫� �빐�떦�긽�뭹 �옣諛붽뎄�땲�뿉 �엳�뒗 寃�
//	public void testCheckCart() {
//		log.info("CHK: " + mapper.checkCart(5L, 3L));
//	}
	
//	@Test	// success
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
//		log.info("ddd !!@!" + mapper.deleteCart(5L, 1L));
//	}
	
//	@Test  // success
//	public void testDeleteAllCart() {
//		
//		mapper.deleteAllCart(1L);
//	}
	
//	@Test  // success
//	public void testUpdateCart() {
//					
//		mapper.updateCart(1L, 1L, 9L);
//
//	}
	
//	@Test  // success
//	public void testGetTotalPrice() {
//		log.info("TOTAL: " + mapper.getTotalPrice(1L));
//	}
	
}
