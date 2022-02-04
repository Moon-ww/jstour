package com.js.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.js.domain.MemberVO;
import com.js.mapper.MemberMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Service
@AllArgsConstructor
public class MemberServiceImpl implements MemberService {
	
	@Setter(onMethod_ = @Autowired)
	private MemberMapper mapper;
	
	@Override
	public int idcheck(String id) {
		return mapper.idcheck(id);
	}
	@Override
	public void insert(MemberVO member) {
		mapper.insert(member);
		mapper.insert_auth(member);
	}
	@Override
	public List<MemberVO> getList() {
		return mapper.getList();
	}

}
