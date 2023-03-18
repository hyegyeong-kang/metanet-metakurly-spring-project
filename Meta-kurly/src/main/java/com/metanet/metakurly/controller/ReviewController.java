package com.metanet.metakurly.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.metanet.metakurly.domain.MemberDTO;
import com.metanet.metakurly.domain.ProductDTO;
import com.metanet.metakurly.domain.ReviewDTO;
import com.metanet.metakurly.mapper.ReviewMapper;
import com.metanet.metakurly.service.MemberService;
import com.metanet.metakurly.service.ProductService;
import com.metanet.metakurly.service.ReviewService;

import lombok.AllArgsConstructor;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@AllArgsConstructor
@RequestMapping("/products")
@Log4j
public class ReviewController {
	
	private ReviewService service;

	
	@GetMapping("/reviews/{p_id}")
	public String showProductReview(@PathVariable("p_id") Long p_id, Model model, HttpSession session) {
		log.info("/reviews/{p_id} : " + p_id);
		MemberDTO member = (MemberDTO) session.getAttribute("member");
//		Long m_id = member.getM_id();
		
		List<ProductDTO> productReview = service.getProductReviewList(p_id);
		model.addAttribute("product", productReview);
		log.info(service.getProductReviewList(p_id));
		return "reviews/review"; 
	}
	
	@GetMapping("/detail/{p_id}/reviews")
	public String showReviewDetail(@PathVariable("p_id") Long p_id, Model model, HttpSession session) {
		log.info("/reviews/{p_id} : " + p_id);
		MemberDTO member = (MemberDTO) session.getAttribute("member");
		
		List<ProductDTO> productReview = service.getProductReviewList(p_id);
		model.addAttribute("product", productReview);
		log.info(service.getProductReviewList(p_id));
		
		return "reviews/reviewDetail";
	}
	
	@GetMapping("/reviews")
	public String showCreateReview() {
		return "reviews/reviewForm";
	}
	
	@PostMapping("/reviews")
	public String createReview(ReviewDTO review, RedirectAttributes rttr) {
		log.info("register : " + review);
		
		service.registerReview(review);
		
		rttr.addFlashAttribute("result", review.getR_id());
		return "redirect:/";
	}
	
	@GetMapping("/reviews/review/{r_id}")
	public String showModifyReview() {
		return "";
	}
	
	@PostMapping("/reviews/review/{r_id}")
	public String modifyReview(ReviewDTO review, RedirectAttributes rttr) {
		log.info("modify : " + review);
		
		if(service.updateReview(review)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/";
	}
	
	@PostMapping("/reviews/{r_id}")
	public String deleteReview() {
		return "";
	}
}