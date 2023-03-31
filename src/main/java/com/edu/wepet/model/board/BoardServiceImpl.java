package com.edu.wepet.model.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edu.wepet.domain.Board;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardDAO boardDAO;
	

	@Override
	public List selectAll() {
		// TODO Auto-generated method stub
		return boardDAO.selectAll();
	}

	@Override
	public Board select(int board_idx) {
		// TODO Auto-generated method stub
		return boardDAO.select(board_idx);
	}

	@Override
	public void insert(Board board) {
		// TODO Auto-generated method stub
		boardDAO.insert(board);
	}

	@Override
	public void update(Board board) {
		// TODO Auto-generated method stub
		boardDAO.update(board);
	}

	@Override
	public void delete(int board_idx) {
		// TODO Auto-generated method stub
		boardDAO.delete(board_idx);
	}

}
