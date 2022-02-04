package com.js.domain;

import java.util.List;

import lombok.Data;
@Data
public class MemberVO {

	private String id;
	private String pwd;
	private String name;
	private String zip_num;
	private String address1;
	private String address2;
	private String phone;
	private String email;
	private String useyn;
	private String indate;
	
	private List<MemberauthVO> authlist;
}
