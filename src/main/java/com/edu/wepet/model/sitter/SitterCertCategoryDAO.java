package com.edu.wepet.model.sitter;

import java.util.List;

import com.edu.wepet.domain.SitterDiary;

public interface SitterCertCategoryDAO {

	public List selectAll();
	public List selectByCertificate(int certCategory_idx);

	
}
