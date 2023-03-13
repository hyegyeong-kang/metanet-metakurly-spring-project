package com.metanet.metakurly.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.metanet.metakurly.domain.CartDTO;
import com.metanet.metakurly.domain.MemberDAO;
import com.metanet.metakurly.domain.MemberDTO;
import com.metanet.metakurly.service.CartService;
import com.metanet.metakurly.service.ReviewService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/cart")
@AllArgsConstructor
@Log4j
public class CartController {
	
	private CartService service;

	// 내 장바구니 불러오기
	@GetMapping("/cartList/{m_id}")
	public String getCartList(@PathVariable("m_id") Long m_id, HttpSession session, Model model) throws Exception {
		log.info("!!cartList!!" + m_id);
		MemberDTO member = (MemberDTO) session.getAttribute("member");
		List<CartDTO> cartList = service.getMyCartList(m_id);

		log.info("KANG: " + cartList);
		model.addAttribute("list", cartList);
		return "/cart";
	}
	
	@GetMapping("/cartAdd")
	public String addCart(@PathVariable("m_id")Long m_id, HttpSession session, Model model, @RequestParam Long p_id, @RequestParam int quantity) throws Exception {
		//Long userId = (Long) session.getAttribute("member");
		if (service.checkCart(p_id, m_id) > 0) { // 중복상품임
			CartDTO cart = new CartDTO();
			cart.setM_id(m_id);
			cart.setP_id(p_id);
			cart.setQuantity(quantity);
			
			service.updateCount(cart);
		} else {
			model.addAttribute("memberId", m_id);
			model.addAttribute("productId", p_id);
			model.addAttribute("quantity", quantity);
		}
		return "/cart/cartList";
	}
	
	@GetMapping("/cartDelete")
	public String deleteCart(@RequestParam Long p_id, HttpSession session, Model model) throws Exception {
		Long m_id = (Long) session.getAttribute("member");
		service.deleteCart(p_id, m_id);
		
		return "/cart/cartList";
	}
	
	@GetMapping("/cartDeleteAll")
	public String deleteAllCart(HttpSession session, Model model) throws Exception{
		Long m_id = (Long) session.getAttribute("member");
		service.deleteAllCart(m_id);
		return "/cart/cartList";
	}
	
	

}