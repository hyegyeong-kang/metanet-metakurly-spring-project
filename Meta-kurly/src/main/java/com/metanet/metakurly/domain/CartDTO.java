package com.metanet.metakurly.domain;

import java.util.List;

import lombok.Data;

@Data
public class CartDTO {
	
	private Long cartNum;
	private Long m_id;
	private Long p_id;
	private int quantity;
	
	
	//private int totalPrice;
	
	private List<ProductDTO> productList;

}
