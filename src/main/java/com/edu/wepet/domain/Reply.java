package com.edu.wepet.domain;


import lombok.Data;


@Data
public class Reply {
	private int reply_idx;
	private int community_board_idx;
	private String writer;
	private String content;
	private String regdate;
}
