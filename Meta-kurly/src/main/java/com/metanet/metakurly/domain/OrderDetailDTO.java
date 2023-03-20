package com.metanet.metakurly.domain;

import lombok.Data;

@Data
public class OrderDetailDTO {
	private Long o_id;
	private Long p_id;
	private int quantity;
	private Long m_id;
	
	private ProductDTO productDTO;
}
