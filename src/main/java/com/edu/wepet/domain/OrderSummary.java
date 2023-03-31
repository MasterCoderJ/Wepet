package com.edu.wepet.domain;


import lombok.Data;

@Data
public class OrderSummary {
	private int ordersummary_idx;
	private String orderId;
	private String orderName;
	private int amount;
	private String method;
	private String requestedAt;
	private String rdays;
	private String petkinds;
	private String msg;
	
	
	
	
	private int petsitter_idx;
	private int member_idx;
	
	//private PetSitter petSitter;

}
