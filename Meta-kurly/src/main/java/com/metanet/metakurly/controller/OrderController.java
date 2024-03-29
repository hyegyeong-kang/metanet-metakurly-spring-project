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
import com.metanet.metakurly.domain.PaymentDTO;
import com.metanet.metakurly.service.CartService;
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
	
	private CartService cService;

	/* 二쇰Ц�궡�뿭 */
	@GetMapping("/list")
	public String getOrderList(HttpSession session, Model model) {
		MemberDTO member = (MemberDTO) session.getAttribute("member");
		Long m_id = member.getM_id();

		log.info("### " + service.getOrderList(m_id));
		model.addAttribute("list", service.getOrderList(m_id));

		return "/orders/list";
	}

	/* �듅�젙 二쇰Ц�쓽 二쇰Ц �긽�꽭 蹂닿린 */
	@GetMapping("/detail/{o_id}")
	public String getOrderDetail(@PathVariable("o_id") Long o_id, Model model) {
		model.addAttribute("order", service.getOrderDetailList(o_id));
		model.addAttribute("payment", service.getPayment(o_id));

		log.info("!!" + service.getOrderDetailList(o_id));
		log.info("## " + service.getPayment(o_id));

		return "/orders/detail";
	}

	@PostMapping("/payment")
	public String payment(HttpSession session, @RequestParam String deliveryMsg, 
			@RequestParam int usePoint, OrderProductDTO orderProduct, PaymentDTO payment, Model model) {
		
		log.info("%%%orderProduct ="+orderProduct.getOrderProductList());
		log.info("%%%payment ="+payment);
		OrderDTO order = new OrderDTO();
		MemberDTO member = (MemberDTO) session.getAttribute("member");
		Long m_id = member.getM_id();
		order.setM_id(m_id);
		List<OrderProductDTO> orderProducts = orderProduct.getOrderProductList();
		order.setPrice(payment.getPayment_amount() + usePoint);
		
		List<OrderDetailDTO> list = new ArrayList<>();
		int total_quantity = 0;
		for(OrderProductDTO product : orderProducts) {
			OrderDetailDTO detailDto = new OrderDetailDTO();
			detailDto.setP_id(product.getP_id());
			detailDto.setProductDTO(pService.get(product.getP_id()));
			detailDto.setQuantity(product.getQuantity());
			list.add(detailDto);
			log.info(detailDto);
			total_quantity += product.getQuantity();
		}
		order.setTotal_amount(total_quantity);
		log.info(list);
		order.setOrderDetailList(list);

		payment.setM_id(m_id);
		service.addOrder(order, payment);
		
		for(OrderDetailDTO orderDetail : order.getOrderDetailList()) {
			cService.deleteCart(orderDetail.getP_id(), m_id);
		}
		
		order = service.getOrderDetailList(order.getO_id());
		log.info(order.getOrderDetailList());
		log.info("order!! " + order);
		log.info("payment@@ " + payment);

		model.addAttribute("order", order);
		model.addAttribute("payment", payment);
		model.addAttribute("msg", deliveryMsg);
		model.addAttribute("usePoint", usePoint);

		return "/orders/success";
	}

	@PostMapping("/order")
	public void orderProduct(OrderProductDTO orderProduct, Model model) {
		List<OrderProductDTO> orderProducts = orderProduct.getOrderProductList();
		
		model.addAttribute("products", service.getProductsInfo(orderProducts));
	}

	/* 二쇰Ц 痍⑥냼�븯湲� */
	@PostMapping("/cancel/{o_id}")
	public String cancleOrder(@PathVariable("o_id") Long o_id, RedirectAttributes rttr) {
		service.cancelOrder(o_id);
		rttr.addFlashAttribute("o_id", o_id);

		return "redirect:/orders/detail/" + o_id;
	}

	@GetMapping("/cancel")
	public void cancelSuccess() {}
	
}
