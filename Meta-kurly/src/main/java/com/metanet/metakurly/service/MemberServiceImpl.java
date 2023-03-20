package com.metanet.metakurly.service;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.metanet.metakurly.domain.MemberDAO;
import com.metanet.metakurly.domain.MemberDTO;
import com.metanet.metakurly.mapper.MemberMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class MemberServiceImpl implements MemberService{
	
	@Autowired(required = false)
	private MemberDAO dao;
	
	@Setter(onMethod_ = @Autowired)
	private MemberMapper mapper;
	
	@Override
	public int signUp(MemberDTO member) {
		log.info("signUp......." + member);
		
		return mapper.signUp(member);
	}

	@Override
	public MemberDTO login(MemberDTO member) throws Exception {
		return mapper.login(member);
	}
	
	@Override
	public void logout(HttpSession session) {
		session.invalidate();
	}

	@Override
	public int modify(MemberDTO member) throws Exception {
		return mapper.modify(member);
	}
	
	//회원 탈퇴
	public void delete(MemberDTO member) throws Exception {
		mapper.delete(member);
	}

		
}
