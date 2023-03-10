package com.metanet.metakurly.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.metanet.metakurly.domain.ProductDTO;
import com.metanet.metakurly.mapper.ProductMapper;

import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductMapper mapper;

	@Override
	public void register(ProductDTO product) {
		log.info("register....." + product);
		mapper.insert(product);
	}

	@Override
	public ProductDTO get(Long p_id) {
		log.info("get....." + p_id);
		return mapper.read(p_id);
	}

	@Override
	public boolean modify(ProductDTO product) {
		log.info("modify....." + product);
		return mapper.update(product) == 1;
	}

	@Override
	public boolean remove(Long p_id) {
		log.info("remove....." + p_id);
		return mapper.delete(p_id) == 1;
	}

	@Override
	public List<ProductDTO> getList() {
		log.info("getList.....");
		return mapper.getList();

	}

}
