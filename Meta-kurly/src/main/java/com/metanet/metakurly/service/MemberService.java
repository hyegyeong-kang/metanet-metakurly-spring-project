package com.metanet.metakurly.service;

import javax.servlet.http.HttpSession;

import com.metanet.metakurly.domain.MemberDTO;

public interface MemberService {

	//회원가입
	public int signUp(MemberDTO member);
	
	//로그인
	public MemberDTO login(MemberDTO member) throws Exception;
	
	public void logout(HttpSession session);
	
//	//로그인 정보
//	public MemberDTO infoMember(MemberDTO member);
	
	public MemberDTO modify(MemberDTO member);

}
