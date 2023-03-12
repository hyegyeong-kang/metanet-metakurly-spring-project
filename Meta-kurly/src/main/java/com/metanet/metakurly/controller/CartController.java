package com.metanet.metakurly.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.metanet.metakurly.domain.CartDTO;
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
	@GetMapping("/cartList")
	public String getCartList(HttpSession session, Model model) throws Exception {

		Long userId = (Long) session.getAttribute("member");

		// DB에 저장되어있던 cartList
		List<CartDTO> cartList = service.getMyCartList(userId);

		model.addAttribute("cartList", cartList);

		return "/cart/cartList";
	}

}
