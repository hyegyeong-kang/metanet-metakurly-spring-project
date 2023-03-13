package com.metanet.metakurly.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.metanet.metakurly.domain.MemberDTO;
import com.metanet.metakurly.domain.OrderDTO;
import com.metanet.metakurly.domain.OrderDetailDTO;
import com.metanet.metakurly.domain.OrderProductDTO;
import com.metanet.metakurly.domain.OrderProductListDTO;
import com.metanet.metakurly.domain.PaymentDTO;
import com.metanet.metakurly.service.OrderService;
import com.metanet.metakurly.service.ProductService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/orders")
@AllArgsConstructor
public class OrderController {
	
	private OrderService service;
	
	private ProductService pService;
	
//	@GetMapping("/list")
//	public void getOrderList(@RequestParam Long m_id, Model model) {
//		model.addAttribute("list", service.getOrderList(m_id));
//	}
	
	/* 주문내역 */
	@GetMapping("/list")
	public String getOrderList(HttpSession session, Model model) {
		MemberDTO member = (MemberDTO) session.getAttribute("member");
		Long m_id = member.getM_id();
		
		
//		List<OrderDTO> orderList = service.getOrderList(m_id);
//		List<OrderDTO> list = new ArrayList<>();
//		for(OrderDTO order : orderList) {
//			//order.setOrderDetailList(service.getOrderDetailList(order.getO_id()));
//			list.add(service.getOrderDetailList(order.getO_id()));
//		}

		log.info("### " + service.getOrderList(m_id));
		model.addAttribute("list", service.getOrderList(m_id));
		//model.addAttribute("list", detailList);
		
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
		model.addAttribute("payment", service.getPayment(o_id));
		
		log.info("!!" + service.getOrderDetailList(o_id));
		log.info("## " + service.getPayment(o_id));
		
		return "/orders/detail";
	}
	
	/* 상품 상세 페이지에서 주문하기 */
//	@GetMapping("/")
//	public void order(OrderProductDTO item, Model model) {
//		log.info(item);
//	}
	
	@PostMapping("/order")
	public void orderProduct(OrderProductDTO orderProduct, Model model) {
		
//		MemberDTO member = (MemberDTO) session.getAttribute("member"); Long m_id =
//		member.getM_id();
		/*
		 * ProductDTO product = pService.get(orderProduct.getP_id());
		 * orderProduct.setBrand(product.getBrand());
		 * orderProduct.setName(product.getName());
		 * orderProduct.setPrice(product.getPrice());
		 */

		model.addAttribute("product", service.getProductInfo(orderProduct));
		//model.addAttribute("products", service.getProductInfo(orderProduct.get));
		
		//model.addAttribute("products", service.getProductsInfo(orderProducts));
		log.info("######products " + service.getProductInfo(orderProduct));
	}
	
	@PostMapping("/payment")
//	public String payment(OrderDTO order) {
	public String payment(HttpSession session, @RequestParam String deliveryMsg, @RequestParam Long p_id, OrderDTO order, PaymentDTO payment, Model model) {
		//service.addOrder(order, payment);
		/*
		 * log.info("order!!! " + order.getTotal_amount()); log.info("order!!! " +
		 * order.getPrice()); log.info("payment!!! " + payment.getMethod());
		 * log.info("payment!!! " + payment.getPayment_amount()); log.info("msg!!! " +
		 * deliveryMsg);
		 */
		MemberDTO member = (MemberDTO)session.getAttribute("member");
		order.setM_id(member.getM_id());
		
		List<OrderDetailDTO> list = new ArrayList<>();
		list.add(new OrderDetailDTO());
		list.get(0).setP_id(p_id);
		order.setOrderDetailList(list);
		service.addOrder(order, payment);
		//model.addAttribute(", model)
		log.info(order);
		model.addAttribute("order", order);
		model.addAttribute("payment", payment);
		
		return "/orders/success";
	}
	
//	@PostMapping("/order")
//	public void order(HttpSession session, OrderProductListDTO productList, Model model) {
//		/*
//		 * MemberDTO member = (MemberDTO) session.getAttribute("member"); Long m_id =
//		 * member.getM_id();
//		 */
//		model.addAttribute("products", service.getProductInfo(productList.getProducts()));
//		log.info("######products" + service.getProductInfo(productList.getProducts()));
//
//		//return "/orders/order";
//	}
	
	/* 주문하기 */
	@GetMapping("/{m_id}")
	public String order(@PathVariable("m_id") Long m_id, OrderProductListDTO productList, Model model) {
		model.addAttribute("products", service.getProductsInfo(productList.getProducts()));
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
