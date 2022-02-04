package com.js.mapper;

import java.util.List;

import com.js.domain.MemberVO;

public interface MemberMapper {

	public int idcheck(String id);
	public void insert(MemberVO member);
	public int insert_auth(MemberVO member);
	public List<MemberVO> getList();
}
