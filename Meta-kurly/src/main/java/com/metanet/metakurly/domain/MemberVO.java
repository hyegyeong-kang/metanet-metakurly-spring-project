package com.metanet.metakurly.domain;

import lombok.Data;

@Data
public class MemberVO {
	private String userid;
	private String password;
	private String name;
	private String email;
	private String phone;
	private String address;
}
