package com.edu.wepet.model.sitter;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.edu.wepet.domain.SitterDiary;
import com.edu.wepet.exception.SitterDiaryException;

@Repository
public class MybatisSitterDiaryDAO  implements SitterDiaryDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List selectAll() {
		List list = sqlSessionTemplate.selectList("SitterDiary.selectAll");
		return list;
	}

	@Override
	public SitterDiary select(int sitterdiary_idx) {
		return sqlSessionTemplate.selectOne("SitterDiary.select", sitterdiary_idx);
	}

	@Override
	public void insert(SitterDiary sitterDiary) throws SitterDiaryException {
		int result = sqlSessionTemplate.insert("SitterDiary.insert", sitterDiary);
		if(result < 1) {
			throw new SitterDiaryException("등록실패");
		}
	}

	@Override
	public void update(SitterDiary sitterDiary) throws SitterDiaryException {
		int result = sqlSessionTemplate.insert("SitterDiary.update", sitterDiary);
		if(result < 1) {
			throw new SitterDiaryException("수정실패");
		}
	}

	@Override
	public void delete(int sitterdiary_idx) throws SitterDiaryException {
		int result = sqlSessionTemplate.delete("SitterDiary.delete", sitterdiary_idx);
		if(result < 1) {
			throw new SitterDiaryException("삭제실패");
		}
	}
}
