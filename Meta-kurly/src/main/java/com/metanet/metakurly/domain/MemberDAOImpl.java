package com.metanet.metakurly.domain;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Inject
	SqlSession sqlSession;
	
	private static String namespace = "com.metanet.metakurly.mapper.MemberMapper.login";
	
	@Override
	public MemberDTO login(MemberDTO member) throws Exception {
		return sqlSession.selectOne(namespace, member);
	}

}
