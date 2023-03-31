package com.edu.wepet.model.pimg;

import java.util.List;

public interface PimgDAO {
	public List selectByBoardIdx(int board_idx); 
	public void deleteReply(int board_idx);
}
