package com.metanet.metakurly.service;

import java.util.List;

import com.metanet.metakurly.domain.ProductDTO;

public interface ProductService {
	public void register(ProductDTO product);
	
	public ProductDTO get(Long p_id);
	
	public boolean modify(ProductDTO product);
	
	public boolean remove(Long p_id);
	
	public List<ProductDTO> getList();

}
