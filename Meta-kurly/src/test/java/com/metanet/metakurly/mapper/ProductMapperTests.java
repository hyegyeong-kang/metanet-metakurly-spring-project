package com.metanet.metakurly.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.metanet.metakurly.domain.ProductDTO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ProductMapperTests {
	
	@Autowired
	private ProductMapper mapper;
	
	// 상품 전체 목록 조회
//	@Test
//	public void testGetList() {
//		mapper.getList().forEach(product -> log.info(product));
//		
//	}
	
	// 상품 생성 
//	@Test
//	public void testInsert() {
//		ProductDTO product = new ProductDTO();
//		product.setP_id(1L);
//		product.setBrand("비비고");
//		product.setPrice(10000);
//		product.setName("ggg");
//		product.setStock(30);
//		product.setDelivery_type("깜깜");
//		product.setSales_amount(10L);
//		product.setStatus("판매중");
//		
//		mapper.insert(product);
//		
//		log.info(product);
//	}
	
	// PK값을 미리 지정 
//	@Test
//	public void testInsertSelectKey(){
//		ProductDTO product = new ProductDTO();
//		product.setP_id(1L);
//		product.setBrand("마켓컬리");
//		product.setPrice(10000);
//		product.setName("닭가슴살");
//		product.setStock(11);
//		product.setDelivery_type("깜깜");
//		product.setSales_amount(1L);
//		product.setStatus("판매중지");
//		
//		mapper.insertSelectKey(product);
//	}
	
//	@Test
//	public void testRead() {
//		ProductDTO board = mapper.read(3L);
//		
//		log.info(board);
//	}
	
//	@Test
//	public void testDelete() {
//		log.info("DELETE COUNT :" + mapper.delete(3L));
//	}
	
	@Test
	public void testUpdate() {
		ProductDTO product = new ProductDTO();
		
		product.setP_id(31L);
		product.setBrand("오리온");
		product.setPrice(3500);
		product.setName("후레쉬베리");
		product.setStock(20);
		product.setDelivery_type("깜깜");
		product.setSales_amount(20L);
		product.setStatus("판매중");
		
		int count =mapper.update(product);
		
		log.info("UPDATE COUNT" + count);
	}
	
}




