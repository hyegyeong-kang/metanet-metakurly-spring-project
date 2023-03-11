package com.metanet.metakurly.domain;

import lombok.Data;

@Data
public class CartDTO {
	
	private Long m_id;
	private Long p_id;
	private Long quantity;
	private Long total_price;

}
