package com.edu.wepet.model.reply;

import java.util.List;

import com.edu.wepet.domain.Reply;

public interface ReplyDAO {
	public void insert(Reply reply);
	public List selectByBoardIdx(int board_idx);
	public void delete(int board_idx);
}
