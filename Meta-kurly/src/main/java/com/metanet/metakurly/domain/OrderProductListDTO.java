package com.metanet.metakurly.domain;

import java.util.List;

import lombok.Data;

@Data
public class OrderProductListDTO {
	private List<CartDTO> products;
}
