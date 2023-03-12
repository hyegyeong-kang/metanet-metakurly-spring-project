package com.metanet.metakurly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.metanet.metakurly.domain.OrderProductDTO;
import com.metanet.metakurly.domain.OrderProductListDTO;
import com.metanet.metakurly.service.OrderService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/orders")
@AllArgsConstructor
public class OrderController {
	
	private OrderService service;
	
//	@GetMapping("/list")
//	public void getOrderList(@RequestParam Long m_id, Model model) {
//		model.addAttribute("list", service.getOrderList(m_id));
//	}
	
	/* 주문내역 */
	@GetMapping("/list/{m_id}")
	public String getOrderList(@PathVariable("m_id") Long m_id, Model model) {
		model.addAttribute("list", service.getOrderList(m_id));
		
		return "/orders/list";
	}
	
//	@GetMapping("/detail/{o_id}")
//	public void getOrderDetail(@PathVariable("o_id") Long o_id, Model model) {
//		model.addAttribute("list", service.getOrderDetailList(o_id));
//	}
	
	/* 특정 주문의 주문 상세 보기 */
	@GetMapping("/detail/{o_id}")
	public String getOrderDetail(@PathVariable("o_id") Long o_id, Model model) {
		model.addAttribute("order", service.getOrderDetailList(o_id));
		
		log.info("!!" + service.getOrderDetailList(o_id));
		
		return "/orders/detail";
	}
	
	/* 상품 상세 페이지에서 주문하기 */
	@GetMapping("/")
	public void order(OrderProductDTO item, Model model) {
		log.info(item);
	}
	
	@PostMapping("/{m_id}")
	public String order(@PathVariable("m_id") Long m_id, @RequestParam Long p_id, @RequestParam int quantity, Model model) {
		model.addAttribute("memberId", m_id);
		model.addAttribute("productId", p_id);
		model.addAttribute("quantity", quantity);
		
		return "/orders/orderForm";
	}
	
	/* 주문하기 */
	@GetMapping("/{m_id}")
	public String order(@PathVariable("m_id") Long m_id, OrderProductListDTO productList, Model model) {
		model.addAttribute("products", service.getProductInfo(productList.getProducts()));
		//model.addAttribute("member", mService.getMember(m_id));
		
		return "/orders/order";
	}
	
	/* 주문 취소하기 */
	@PostMapping("/cancel/{o_id}")
	public String cancleOrder(@PathVariable("o_id") Long o_id, RedirectAttributes rttr){
		service.cancelOrder(o_id);
		rttr.addFlashAttribute("o_id", o_id);
		
		return "redirect:/orders/cancel";
	}
	
	@GetMapping("/cancel")
	public void cancelSuccess() {}
}
