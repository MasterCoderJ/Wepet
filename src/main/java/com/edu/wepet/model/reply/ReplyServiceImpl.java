package com.edu.wepet.model.reply;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edu.wepet.domain.Reply;

@Service
public class ReplyServiceImpl implements ReplyService{
	
	@Autowired
	private ReplyDAO replyDAO;

	@Override
	public void insert(Reply reply) {
		// TODO Auto-generated method stub
		replyDAO.insert(reply);
	}

	@Override
	public List selectByBoardIdx(int board_idx) {
		// TODO Auto-generated method stub
		return replyDAO.selectByBoardIdx(board_idx);
	}

	@Override
	public void delete(int board_idx) {
		// TODO Auto-generated method stub
		
		
		replyDAO.delete(board_idx);
	}
	
}
