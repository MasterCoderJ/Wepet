package com.edu.wepet.model.pimg;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PimgServiceImpl implements PimgService{
	
	@Autowired
	private PimgDAO pimgDAO;

	@Override
	public List selectByBoardIdx(int board_idx) {
		// TODO Auto-generated method stub
		return pimgDAO.selectByBoardIdx(board_idx);
	}

	@Override
	public void deleteReply(int board_idx) {
		// TODO Auto-generated method stub
		pimgDAO.deleteReply(board_idx);
	}

}
