package com.metanet.metakurly.domain;

public interface MemberDAO {
	
	//회원 로그인
	public MemberDTO login(MemberDTO member) throws Exception;

	//회원정보 수정
	public int modify(MemberDTO member) throws Exception;
		
	//회원 탈퇴
	public int delete(MemberDTO member) throws Exception;

}
