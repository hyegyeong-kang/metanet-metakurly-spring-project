package com.metanet.metakurly.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.metanet.metakurly.domain.OrderDTO;
import com.metanet.metakurly.mapper.OrderMapper;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class OrderServiceImpl implements OrderService {
	
	@Autowired
	private OrderMapper mapper;

	@Override
	public OrderDTO getByOid(Long o_id) {
		log.info("get Service..." + o_id);
		return mapper.readByOid(o_id);
	}

	@Override
	public List<OrderDTO> getListByMid(Long m_id) {
		log.info("getList Service...");
		return mapper.getListByMid(m_id);
	}

}
