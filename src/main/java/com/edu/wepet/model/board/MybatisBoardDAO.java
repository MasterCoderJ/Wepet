package com.edu.wepet.model.board;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.edu.wepet.domain.Board;
import com.edu.wepet.exception.BoardException;

@Repository
public class MybatisBoardDAO implements BoardDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public List selectAll() {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("Board.selectAll");
	}

	@Override
	public Board select(int board_idx) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("Board.select", board_idx);
	}

	@Override
	public void insert(Board board) throws BoardException {
		// TODO Auto-generated method stub
		int result = sqlSessionTemplate.insert("Board.insert", board);
		if(result < 1 ) {
			throw new BoardException("글 등록 실패.");
		}
	}

	@Override
	public void update(Board board) throws BoardException {
		// TODO Auto-generated method stub
		int result = sqlSessionTemplate.update("Board.update", board);
		if(result < 1 ) {
			throw new BoardException("글 수정 실패.");
		}
	}

	@Override
	public void delete(int board_idx) throws BoardException {
		// TODO Auto-generated method stub
		int result = sqlSessionTemplate.delete("Board.delete",board_idx);
		
		if(result < 1 ) {
			throw new BoardException("글 삭제 실패.");
		}
	}

}
