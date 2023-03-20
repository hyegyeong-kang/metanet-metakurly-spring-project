package com.metanet.metakurly.mapper;

import com.metanet.metakurly.domain.PaymentDTO;

public interface PaymentMapper {
	
	public void createPayment(PaymentDTO payment);
	
	public PaymentDTO getPayment(Long o_id);
}
