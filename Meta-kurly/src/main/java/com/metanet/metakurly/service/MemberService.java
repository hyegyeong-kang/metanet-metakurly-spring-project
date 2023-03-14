package com.metanet.metakurly.service;

import javax.servlet.http.HttpSession;

import com.metanet.metakurly.domain.MemberDTO;

public interface MemberService {

	//회원가입
	public int signUp(MemberDTO member);
	
	//로그인
	public MemberDTO login(MemberDTO member) throws Exception;
	
	//로그아웃
	public void logout(HttpSession session);
	
	//회원정보 수정
	public int modify(MemberDTO member) throws Exception;
	
	//회원 탈퇴
	public void delete(MemberDTO member) throws Exception;

}
