package com.edu.wepet.model.reply;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.edu.wepet.domain.Reply;
import com.edu.wepet.exception.ReplyException;

@Repository
public class MybatisReplyDAO implements ReplyDAO{

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public void insert(Reply reply) throws ReplyException{
		// TODO Auto-generated method stub
		sqlSessionTemplate.insert("Reply.insert",reply);
	}

	@Override
	public List selectByBoardIdx(int board_idx) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("",board_idx);
	}

	@Override
	public void delete(int board_idx) throws ReplyException{
		// TODO Auto-generated method stub
		int result = sqlSessionTemplate.delete("Reply.delete", board_idx);
		if(result < 1) {
			throw new ReplyException("메시지 삭제 실패");
		}
	}

}
