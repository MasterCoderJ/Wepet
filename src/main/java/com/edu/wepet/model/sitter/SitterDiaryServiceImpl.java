package com.edu.wepet.model.sitter;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edu.wepet.domain.SitterDiary;
import com.edu.wepet.exception.SitterDiaryException;

@Service
public class SitterDiaryServiceImpl implements SitterDiaryService {

	// DAO
	@Autowired
	private SitterDiaryDAO sitterDiaryDAO;
	
	
	@Override
	public List selectAll() {
		return sitterDiaryDAO.selectAll();
	}

	@Override
	public SitterDiary select(int sitterdiary_idx) {
		return sitterDiaryDAO.select(sitterdiary_idx);
	}

	@Override
	public void regist(SitterDiary sitterDiary) throws SitterDiaryException {
		sitterDiaryDAO.insert(sitterDiary);
	}

	@Override
	public void update(SitterDiary sitterDiary) {
		sitterDiaryDAO.update(sitterDiary);
	}

	@Override
	public void delete(int sitterdiary_idx) {
		sitterDiaryDAO.delete(sitterdiary_idx);
	}

}
