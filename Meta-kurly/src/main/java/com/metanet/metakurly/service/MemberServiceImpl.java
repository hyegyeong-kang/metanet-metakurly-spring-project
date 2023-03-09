package com.metanet.metakurly.service;

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
	public void signUp(MemberDTO member) {
		log.info("signUp......." + member);
		mapper.signUpSelectKey(member);
	}
	
}
