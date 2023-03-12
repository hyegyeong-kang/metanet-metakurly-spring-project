package com.metanet.metakurly.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.metanet.metakurly.domain.MemberDTO;
import com.metanet.metakurly.mapper.MemberMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class MemberServiceImpl implements MemberService{

	@Setter(onMethod_ = @Autowired)
	private MemberMapper mapper;
	
	@Override
	public int signUp(MemberDTO member) {
		log.info("signUp......." + member);
		
		return mapper.signUp(member);
	}

	@Override
	public boolean login(MemberDTO member, HttpSession session) {
		boolean result = mapper.login(member, session);
		if(result) {
			MemberDTO dto = infoMember(member);
			
			session.setAttribute("userId", dto.getUserId());
			session.setAttribute("name", dto.getName());
		}
		return result;
		
	}
	
	@Override
	public MemberDTO infoMember(MemberDTO member) {
		return mapper.infoMember(member);
	}

	@Override
	public MemberDTO modify(MemberDTO member) {
		return mapper.modify(member);
	}
		
}
