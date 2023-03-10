package com.metanet.metakurly.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.metanet.metakurly.domain.MemberDTO;
import com.metanet.metakurly.service.MemberService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/member/*")
@AllArgsConstructor
public class MemberController {
	
	private MemberService service;
	
	@GetMapping("/signup")
	public void signUp() {}
	
	@PostMapping("/signup")
	public String signUp(MemberDTO member) throws Exception {
		
		log.info("MemberDTO...." + member);
		
		int result = service.signUp(member);
		
		if(result==1) System.out.println("가입 완료");
		else System.out.println("가입실패");
		
		return "redirect:/member/login";
	}
	
	@GetMapping("/login")
	public void login() {}
	
}
