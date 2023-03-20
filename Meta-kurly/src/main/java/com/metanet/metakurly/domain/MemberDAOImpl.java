package com.metanet.metakurly.domain;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Inject
	SqlSession sqlSession;
	
	private static String namespace = "com.metanet.metakurly.mapper.MemberMapper";
	
	@Override
	public MemberDTO login(MemberDTO member) throws Exception {
		return sqlSession.selectOne(namespace + ".login", member);
	}

	@Override
	public int modify(MemberDTO member) throws Exception {
		return sqlSession.update(namespace + ".modify", member);
	}

	@Override
	public int delete(MemberDTO member) throws Exception {
		return sqlSession.update(namespace + ".delete", member);
		
	}

	


}
