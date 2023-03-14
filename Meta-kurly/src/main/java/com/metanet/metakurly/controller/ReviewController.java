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
@RequestMapping("/review")
@Log4j
public class ReviewController {
	
	private ReviewService service;

	
	@GetMapping("")
	public String showProductReview(@RequestParam("p_id") Long p_id, Model model) {
		log.info("/review/{p_id} : " + p_id);
		model.addAttribute("review", service.getProductReviewList(p_id));
		log.info(service.getProductReviewList(p_id));
		return "review"; 
	}
	
	@GetMapping("/detail/{r_id}")
	public String showReviewDetail(@PathVariable("r_id") int r_id, @RequestParam("p_id") Long p_id) {
		
		return "reviewDetail";
	}
	
	@GetMapping("/reviewAdd")
	public String showCreateReview() {
		return "reviewForm";
	}
	
	@PostMapping("/reviewAdd")
	public String createReview(ReviewDTO review, RedirectAttributes rttr) {
		log.info("register : " + review);
		
		service.registerReview(review);
		
		rttr.addFlashAttribute("result", review.getR_id());
		return "redirect:/";
	}
	
	@GetMapping("/reviewModify")
	public String showModifyReview() {
		return "";
	}
	
	@PostMapping("/reviewModify")
	public String modifyReview(ReviewDTO review, RedirectAttributes rttr) {
		log.info("modify : " + review);
		
		if(service.updateReview(review)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/";
	}
	
	@PostMapping("/reviewDelete")
	public String deleteReview() {
		return "";
	}
}