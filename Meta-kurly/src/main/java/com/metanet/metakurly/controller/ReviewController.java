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
	
	private final MemberService memberService;
	private final ReviewService reviewService;
 // , @RequestParam(defaultValue = "1") int page
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String myOrderList(Model model, HttpSession session) {
		
		int sessionId = Integer.parseInt(session.getAttribute("sessionId").toString());
		
	//	Member member = memberService.findMember(sessionId); // 세션값을 이용해 회원 찾기
		
		List<ReviewDTO> reviewList = reviewService.getMyReviewList(sessionId);
		
		model.addAttribute("reviewList", reviewList);
		
		return "qnaList";
	}
	
	
//	@GetMapping("/product/review")
//	public String review(Model model, HttpSession session, @RequestParam(defaultValue = "1") int page) {
//		
//		model.addAttribute("sessionId", session.getAttribute("sessionId"));
//		
//		List<ReviewDTO> reviewList = reviewService.findReviewList()
//		
//		return "product/review";
//	}
}
