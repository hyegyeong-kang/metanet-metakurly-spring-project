package com.metanet.metakurly.domain;

import java.util.Date;

import lombok.Data;

@Data
public class OrderDTO {
	private Long o_id;
	private Date orders_date;
	private String status;
	private Long total_amount;
	private int price;
	private Long m_id;
}
