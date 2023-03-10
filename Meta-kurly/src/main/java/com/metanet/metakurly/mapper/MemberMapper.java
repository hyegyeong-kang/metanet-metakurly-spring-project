package com.metanet.metakurly.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.metanet.metakurly.domain.MemberDTO;

public interface MemberMapper {
	
	//@Select("select * from member")
	public List<MemberDTO> getList();
	
	//회원 등록
	public int signUp(MemberDTO member);
	
	//로그인
	public MemberDTO login(MemberDTO member);
	
	public void signUpSelectKey(MemberDTO member);
}
