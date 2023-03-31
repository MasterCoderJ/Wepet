package com.edu.wepet.domain;



import java.util.List;

import lombok.Data;

@Data
public class Board {
	private int community_board_idx;
	private CommunityCat1 community_cat1;
	private CommunityCat2 community_cat2;
	private String title;
	private Member member;
	private String content;
	private String regdate;
	private int hit;
	private int recommand_cnt;
	private List<Reply> reply;
}
