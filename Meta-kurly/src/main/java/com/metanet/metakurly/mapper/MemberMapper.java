package com.metanet.metakurly.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.metanet.metakurly.domain.MemberVO;

public interface MemberMapper {
	
	@Select("select * from member")
	public List<MemberVO> getList();
	
	public void register(MemberVO member);
}
