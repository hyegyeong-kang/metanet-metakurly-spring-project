package com.metanet.metakurly.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.metanet.metakurly.domain.ReviewDTO;
import com.metanet.metakurly.service.MemberService;
import com.metanet.metakurly.service.ReviewService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequiredArgsConstructor
@Log4j
public class ReviewController {
	
	@GetMapping("/product/reviews")
	public String showReview() {
		return "review";
	}
	
	@GetMapping("/product/reviewDetail")
	public String showReviewDetail() {
		return "reviewDetail";
	}
}