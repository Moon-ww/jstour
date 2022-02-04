package com.js.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.js.domain.MemberVO;
import com.js.mapper.SpringMemberMapper;
import com.js.security.domain.AdminUser;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
@Log4j
public class AdminUserDetailService implements UserDetailsService {

	@Setter(onMethod_=@Autowired)
	private SpringMemberMapper mapper;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

		MemberVO vo = mapper.read(username);
		log.warn("mapper result:"+vo);
		//return null;
		return vo == null ? null : new AdminUser(vo);
	}
}
