package com.metanet.metakurly.domain;

import lombok.Data;

@Data
public class MemberDTO {
	private Long m_id;
	private String userId;
	private String password;
	private String name;
	private String email;
	private String phone;
	private String address;
	private int point;
	private String grade;
	private String status;
	private int enabled;
	private String authority;
}
