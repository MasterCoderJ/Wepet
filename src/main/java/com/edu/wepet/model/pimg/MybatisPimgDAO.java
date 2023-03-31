package com.edu.wepet.model.pimg;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.edu.wepet.exception.PimgException;
import com.edu.wepet.exception.ReplyException;

@Repository
public class MybatisPimgDAO implements PimgDAO{

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List selectByBoardIdx(int board_idx) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("Pimg.selectByBoardIDX",board_idx);
	}

	@Override
	public void deleteReply(int board_idx) {
		// TODO Auto-generated method stub
		sqlSessionTemplate.delete("Pimg.delete", board_idx);
	}
	


	
}
