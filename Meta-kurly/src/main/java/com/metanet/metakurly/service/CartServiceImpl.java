package com.metanet.metakurly.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.metanet.metakurly.domain.CartDTO;
import com.metanet.metakurly.mapper.CartMapper;

public class CartServiceImpl implements CartService {
	
	@Autowired
	private CartMapper mapper;

	
	// 해당 회원 장바구니 리스트 출력
	@Override
	public List<CartDTO> getMyCartList(Long m_id) {
		return mapper.getMyCartList(m_id);
	}

	// 해당 회원 장바구니에 물건 추가
	@Override
	public void addCart(CartDTO cart) {
		mapper.addCart(cart);
	}

	// 장바구니 중복 상품 확인
	@Override
	public int checkCart(Long p_id, Long m_id) {
		return mapper.checkCart(p_id, m_id);
	}

}
