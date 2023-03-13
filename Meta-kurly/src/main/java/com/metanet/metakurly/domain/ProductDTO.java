
package com.metanet.metakurly.domain;

import lombok.Data;

@Data
public class ProductDTO {
	
	private Long p_id;
	
	private String brand;
	
	private int price;
	
	private String name;
	
	private int stock;
	
	private String delivery_type;
	
	private Long sales_amount;
	
	private String img_url;
	
	private String status; // '판매 중지', '판매' 
	
}
