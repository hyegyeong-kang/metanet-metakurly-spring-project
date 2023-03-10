package com.metanet.metakurly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	@GetMapping("/list/{m_id}")
	public String getOrderList(@PathVariable("m_id") Long m_id, Model model) {
		model.addAttribute("list", service.getOrderList(m_id));
		
		return "/orders/list";
	}
	
//	@GetMapping("/detail/{o_id}")
//	public void getOrderDetail(@PathVariable("o_id") Long o_id, Model model) {
//		model.addAttribute("list", service.getOrderDetailList(o_id));
//	}
	
	@GetMapping("/detail/{o_id}")
	public String getOrderDetail(@PathVariable("o_id") Long o_id, Model model) {
		model.addAttribute("orderlist", service.getOrderDetailList(o_id));
		
		log.info("!!" + service.getOrderDetailList(o_id));
		
		return "/orders/detail";
	}
}
