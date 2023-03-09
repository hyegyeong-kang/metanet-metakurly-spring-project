package com.metanet.metakurly.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class OrderMapperTests {
	@Autowired
	private OrderMapper mapper;
	
	@Test
	public void getListTest() {
		mapper.getList().forEach(order -> log.info(order));
	}
	
	@Test
	public void readTest() {
		log.info(mapper.read(1L));
	}
}
