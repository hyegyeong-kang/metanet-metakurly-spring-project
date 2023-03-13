package com.metanet.metakurly.domain;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Inject
	SqlSession sqlSession;
	
	@Override
	public Long login(MemberDTO member) {
		return sqlSession.selectOne("com.metanet.metakurly.mapper.MemberMapper.login", member);
	}

}
