package com.metanet.metakurly.domain;

import java.util.List;

import lombok.Data;

@Data
public class OrderDetailDTO {
	private Long o_id;
	private Long p_id;
	private int quantity;
	private Long m_id;
	
	private List<ProductDTO> productList;
}
