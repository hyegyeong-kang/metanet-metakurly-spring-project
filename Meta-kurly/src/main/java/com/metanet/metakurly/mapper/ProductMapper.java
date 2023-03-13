
package com.metanet.metakurly.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.metanet.metakurly.domain.ProductDTO;

public interface ProductMapper {
//	@Select("select * from proudct")
	public List<ProductDTO> getList();
	
	public List<ProductDTO> getBestProductList();
	
	public void insert(ProductDTO product);
	
	public void insertSelectKey(ProductDTO product);
	
	public ProductDTO read(Long p_id);
	
	public int delete(Long p_id);
	
	public int update(ProductDTO product);

}
