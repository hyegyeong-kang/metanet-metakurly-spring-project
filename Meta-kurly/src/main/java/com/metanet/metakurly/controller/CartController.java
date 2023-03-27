package com.metanet.metakurly.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.metanet.metakurly.domain.CartDTO;
import com.metanet.metakurly.domain.MemberDTO;
import com.metanet.metakurly.service.CartService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/cart")
@AllArgsConstructor
@Log4j
public class CartController {
	
	private CartService service;

	//@GetMapping("/cartList")
	//@RequestMapping("/cartList/{m_id}")
	//@RequestMapping(value="/cartList", method = {RequestMethod.GET, RequestMethod.POST})
	@GetMapping("/cartList")
	public String getCartList(Model model, HttpSession session) throws Exception {
		log.info("!!cartList!!");
		MemberDTO member = (MemberDTO) session.getAttribute("member");
		Long m_id = member.getM_id();
		
		
		List<CartDTO> cartList = service.getMyCartList(m_id);

		log.info("KANG: " + cartList);
		model.addAttribute("list", cartList);
		return "cart/cart";
	}
	
	
	@PostMapping("/cartAdd")
	//@RequestMapping(value="/cartAdd", method = {RequestMethod.GET, RequestMethod.POST})
	@ResponseBody
	public String addCart(HttpSession session, Model model, @RequestBody Map<String, Integer> productInfo) throws Exception {
		MemberDTO member = (MemberDTO) session.getAttribute("member");
		Long m_id = member.getM_id();
		
		log.info("add!!!!!!!!!!");
		CartDTO cart = new CartDTO();
		
		Long p_id = Long.valueOf(productInfo.get("p_id"));
		int quantity = productInfo.get("quantity");
		
		log.info("o_id@@@" + p_id);
		if (service.checkCart(p_id, m_id) > 0) { 
			log.info("222222222222" + p_id);
			cart.setM_id(m_id);
			cart.setP_id(p_id);
			cart.setQuantity(quantity);
			
			service.updateCount(cart);
		} else {
			log.info("11111111111" + p_id);
//			model.addAttribute("memberId", m_id);
//			model.addAttribute("productId", p_id);
//			model.addAttribute("quantity", quantity);
			
			cart.setM_id(m_id);
			cart.setP_id(p_id);
			cart.setQuantity(quantity);

			service.addCart(cart);
		}
		return "/cart/cartList";
	}
	
	@GetMapping("/cartDelete")
	public String deleteCart(@RequestParam Long p_id, HttpSession session, Model model) throws Exception {
		Long m_id = (Long) session.getAttribute("member");
		service.deleteCart(p_id, m_id);
		
		return "redirect:/cart/cartList" + m_id;
	}
	
	@GetMapping("/cartDeleteAll")
	public String deleteAllCart(HttpSession session, Model model) throws Exception{
		Long m_id = (Long) session.getAttribute("member");
		service.deleteAllCart(m_id);
		return "redirect: /cart/cartList" + m_id;
	}
	
	// ���� ���� �������ִ� �� 
	@PostMapping("/cartUpdate")
	public String updateCart(HttpSession session, Model model, Long p_id, int quantity) {
		Long m_id = (Long) session.getAttribute("member");
		service.updateCart(p_id, m_id, quantity);
		return "redirect: /cart/cartUpdate";
	}
	
	

}