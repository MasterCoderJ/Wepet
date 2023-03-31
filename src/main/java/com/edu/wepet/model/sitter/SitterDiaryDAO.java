package com.edu.wepet.model.sitter;

import java.util.List;

import com.edu.wepet.domain.SitterDiary;

public interface SitterDiaryDAO {
	
	public  List selectAll();
	public SitterDiary select(int sitterdiary_idx);
	public void insert(SitterDiary sitterDiary);
	public void update(SitterDiary sitterDiary);
	public void delete(int sitterdiary_idx);
	
}
