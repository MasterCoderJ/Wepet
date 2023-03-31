package com.edu.wepet.domain;

import lombok.Data;

@Data
public class SitterDiary {
	private int sitterdiary_idx;
	private String title;
	private String content;
	private String regdate;
	
	private Member member;
	//private PetMain petMain;
	
}
