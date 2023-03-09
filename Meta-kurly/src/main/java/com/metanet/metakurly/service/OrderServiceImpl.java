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
	public OrderDTO get(Long o_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<OrderDTO> getList() {
		// TODO Auto-generated method stub
		return null;
	}

}
