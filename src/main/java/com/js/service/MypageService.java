package com.js.service;

import java.util.List;

import com.js.domain.MemberVO;

public interface MypageService {

	public int idcheck(String id);
	public void insert(MemberVO member);
	public List<MemberVO> getList();
}
