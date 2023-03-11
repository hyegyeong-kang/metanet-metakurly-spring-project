package com.metanet.metakurly.mapper;

import java.util.List;

import com.metanet.metakurly.domain.CartDTO;

public interface CartMapper {
	
	
	// 해당 회원 장바구니 리스트 출력
	public List<CartDTO> getMyCartList(Long m_id);
	
	// 해당 회원 장바구니 물건추가
	public void addCart(CartDTO cart);
	
	// 장바구니 중복 상품 확인
	public int checkCart(Long p_id, Long m_id);

}
