package com.metanet.metakurly.mapper;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Select;

import com.metanet.metakurly.domain.MemberDTO;

public interface MemberMapper {
	
	//회원 등록
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
