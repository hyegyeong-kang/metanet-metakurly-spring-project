package com.metanet.metakurly.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.metanet.metakurly.domain.ProductDTO;
import com.metanet.metakurly.mapper.ProductMapperTests;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ProductServiceTests {
	@Autowired
	private ProductService service;
	
//	@Test
//	public void testRegister() {
//		ProductDTO product = new ProductDTO();
//		product.setP_id(45L);
//		product.setBrand("메타컬리");
//		product.setName("배고파");
//		product.setPrice(12000);
//		product.setStock(100);
//		product.setDelivery_type("깜깜");
//		product.setSales_amount(5L);
//		product.setStatus("판매중");
//		
//		service.register(product);
//		log.info("생성된 게시물의 번호 + " + product.getP_id());
//	}
	
//	@Test
//	public void testGet() {
//		log.info(service.get(31L));
//	}
	
//	@Test
//	public void testModify() {
//		ProductDTO product = service.get(31L);
//		
//		if(product == null) {
//			return;
//		}
//		
//		product.setName("이름을 수정합니다.");
//		log.info("MODIFY_RESULT : " + service.modify(product));
//		
//	}
	
//	@Test
//	public void testRemove() {
//		log.info("REMOVE_RESULT : " + service.remove(44L));
//		
//	}
	
//	@Test
//	public void testGetList() {
//		service.getList().forEach(product -> log.info(product));
//	}	
	
	@Test
	public void testGetBestProductList() {
		service.getBestProductList().forEach(product -> log.info(product));
	}

}
