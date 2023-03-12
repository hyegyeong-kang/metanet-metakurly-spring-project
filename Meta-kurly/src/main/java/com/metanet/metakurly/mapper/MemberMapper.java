package com.metanet.metakurly.mapper;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Select;

import com.metanet.metakurly.domain.MemberDTO;

public interface MemberMapper {
	
	//@Select("select * from member")
	public List<MemberDTO> getList();
	
	//회원 등록
	public int signUp(MemberDTO member);
	
	//로그인
	public boolean login(MemberDTO member, HttpSession session);
	
	//로그인 정보
	public MemberDTO infoMember(MemberDTO member);
	
	public MemberDTO modify(MemberDTO member);
	
	public void signUpSelectKey(MemberDTO member);
}
