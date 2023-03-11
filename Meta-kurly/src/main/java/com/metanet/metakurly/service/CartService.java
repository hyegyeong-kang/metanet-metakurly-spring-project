package com.metanet.metakurly.service;

import java.util.List;

import com.metanet.metakurly.domain.CartDTO;

public interface CartService {
	
	
	// 해당 회원 장바구니 리스트 출력
	public List<CartDTO> getMyCartList(Long m_id);
	
	// 해당 회원 장바구니 추가
	public void addCart(CartDTO cart);
	
	// 장바구니 중복 상품 확인
	public int checkCart(Long p_id, Long m_id);
	
	// 중복된 상품이 있다면 넣지말고 수량 더해주기
	// 장바구니 물건 삭제
	// 장바구니 물건 업데이트 (수량변경)
	

}
