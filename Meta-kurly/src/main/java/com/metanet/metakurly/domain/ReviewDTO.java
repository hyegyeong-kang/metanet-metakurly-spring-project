package com.metanet.metakurly.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class ReviewDTO {
	private Long r_id;
	private Long m_id;
	private Date review_date;
	private String contents;
	private Long p_id;
}