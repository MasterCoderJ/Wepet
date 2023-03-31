package com.edu.wepet.domain;

import lombok.Data;

@Data
public class Certificate {

	private int certificate_idx;
	private String title;
	private String regdate;
	
	private CertCategory certCategory;
	
	private PetSitter petSitter;
	
}
