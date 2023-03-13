package com.metanet.metakurly.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
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
	
	@PostMapping("/login")
	public String login(HttpServletRequest request, MemberDTO member, RedirectAttributes rttr) throws Exception {
		//System.out.println("login 메서드 진입");
        //System.out.println("전달된 데이터 : " + member);
        
		HttpSession session = request.getSession();
		MemberDTO dto = service.login(member);
		
		if(dto == null) {
			int result = 0;
			rttr.addFlashAttribute("result", result);
			return "redirect:/member/login";
		}
		
		session.setAttribute("member", dto);
        return "redirect:/";
	}
	
	@RequestMapping("/logout")
	public ModelAndView logout(HttpSession session, ModelAndView mav) {
		service.logout(session);
		mav.setViewName("/login");
		mav.addObject("msg", "logout");
		return mav;
	}
	
	@GetMapping("/modify")
	public void modify() {}
	
	@PostMapping("/modify")
	public String modify(MemberDTO member) throws Exception {
		service.modify(member);
		return "redirect:/member/login";
	}
	
	
}
