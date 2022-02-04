package com.js.security.domain;

import java.util.Collection;
import java.util.stream.Collectors;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import com.js.domain.MemberVO;

import lombok.Getter;
@Getter
public class AdminUser extends User {

	private static final long serialVersionUID = 1L;
	
	private MemberVO member;
	
	public AdminUser(String username,String password, Collection<? extends GrantedAuthority> authorites) {
		super(username,password,authorites);
		
	}
	public AdminUser(MemberVO vo) {
		super(vo.getId(),vo.getPwd(),
				vo.getAuthlist()
				.stream()
				.map(auth->new SimpleGrantedAuthority(auth.getAuth()))
				.collect(Collectors.toList()));
		this.member=vo;
	}
}
