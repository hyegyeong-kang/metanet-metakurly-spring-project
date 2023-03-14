package com.metanet.metakurly.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.metanet.metakurly.domain.PaymentDTO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class PaymentMapperTests {
	@Autowired
	private PaymentMapper mapper;
	
	@Test
	public void createPaymentTest() {
		PaymentDTO payment = new PaymentDTO();
		payment.setM_id(2L);
		payment.setO_id(1L);
		payment.setMethod("카드");
		payment.setPayment_amount(15000);
		mapper.createPayment(payment);
		log.info(payment);
	}
}
