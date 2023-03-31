package com.edu.wepet.model.board;
import java.util.List;

import com.edu.wepet.domain.Board;

public interface BoardService {
	public List selectAll();
	public Board select(int community_board_idx);
	public void insert(Board board);
	public void update(Board board);
	public void delete(int board_idx);
}
