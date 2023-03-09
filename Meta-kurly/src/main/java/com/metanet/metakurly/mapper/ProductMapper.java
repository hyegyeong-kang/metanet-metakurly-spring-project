package com.metanet.metakurly.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.metanet.metakurly.domain.ProductVO;

public interface ProductMapper {
//	@Select("select * from proudct")
	public List<ProductVO> getList();

}
