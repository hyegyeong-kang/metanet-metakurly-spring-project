package com.metanet.metakurly.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
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
	
	@Autowired
	private BCryptPasswordEncoder pwEncoder;
	
	@GetMapping("/signup")
	public void signUp() {}
	
	@PostMapping("/signup")
	public String signUp(MemberDTO member) throws Exception {
		
		String rawPw = "";
		String encodePw = "";
		
		rawPw = member.getPassword();
		encodePw = pwEncoder.encode(rawPw);
		member.setPassword(encodePw);
		
		service.signUp(member);
		
		return "redirect:/member/login";
	}
	
	@GetMapping("/login")
	public void login() {}
	
	@PostMapping("/login")
	public String login(HttpServletRequest request, MemberDTO member, RedirectAttributes rttr) throws Exception {
        
		HttpSession session = request.getSession();
		String rawPw = "";
		String encodePw = "";
	
		MemberDTO dto = service.login(member);
		
		if(dto != null) {
			rawPw = member.getPassword();
			encodePw = dto.getPassword();
			
			if(true == pwEncoder.matches(rawPw, encodePw)) {
				dto.setPassword("");
				session.setAttribute("member", dto);
				return "redirect:/";
			} else {
				rttr.addFlashAttribute("result", 0);
				return "redirect:/member/login";
			}
			
		} else {
			rttr.addFlashAttribute("result", 0);
			return "redirect:/member/login";
		}
	}
	
	@GetMapping("/logout")
	public String logout(HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		session.invalidate();
		
		return "redirect:/";
	}
	
	@GetMapping("/modify")
	@PreAuthorize("isAuthenticated()")
	public void modify() {}
	
	@PostMapping("/modify")
	@PreAuthorize("isAuthenticated()")
	public String modify(MemberDTO member) throws Exception {
		
		String rawPw = "";
		String encodePw = "";
		
		rawPw = member.getPassword();
		encodePw = pwEncoder.encode(rawPw);
		member.setPassword(encodePw);
		
		service.modify(member);
		
		return "redirect:/member/modify";
	}
	
	@GetMapping("/delete")
	@PreAuthorize("isAuthenticated()")
	public void delete() {}
	
	@PostMapping("/delete")
	@PreAuthorize("isAuthenticated()")
	public String delete(HttpServletRequest request, MemberDTO member, RedirectAttributes rttr) throws Exception {
		
		HttpSession session = request.getSession();
		String rawPw = "";
		String encodePw = "";
		
		service.delete(member);
		
		if(member != null) {
			
			rawPw = member.getPassword();
			//encodePw = dto.getPassword();
			
			if(true == pwEncoder.matches(rawPw, encodePw)) {
				member.setStatus("deleted");
				session.setAttribute("member", member);
				session.invalidate();
				return "redirect:/member/";
			} else {
				rttr.addFlashAttribute("result", 0);
				return "redirect:/member/delete";
			}
			
		} else {
			rttr.addFlashAttribute("result", 0);
			return "redirect:/member/delete";
		}
	
	}
	
	@GetMapping("myPage")
	public void myPage(HttpSession session) {
		
	}
	
}
