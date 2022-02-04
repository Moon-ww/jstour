package com.js.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.js.domain.MemberVO;
import com.js.service.MemberService;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/member/*")
@AllArgsConstructor
@Log4j
public class MemberController {
	
	@Setter(onMethod_ =@Autowired)
	private MemberService service;
	
	@Setter(onMethod_ =@Autowired)
	private PasswordEncoder pwencoder;
	
	@GetMapping("/join.do")
	public void memberjoinview() {
		
	}
	@GetMapping("/memberIDcheck.do")
	public @ResponseBody int memberidcheck(@RequestParam("id") String id) {
		int result = service.idcheck(id);
		log.info("result : "+result);
		return result;
	}
	@PostMapping("/memberinsert.do")
	public String memberinsert(MemberVO member) {
		String inputpass = pwencoder.encode(member.getPwd());
		member.setPwd(inputpass);
		
		service.insert(member);
		return "redirect:/";
	}
	@GetMapping("/login")
	public void customlogin() {
	}
}
