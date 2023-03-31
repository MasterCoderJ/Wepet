package com.edu.wepet.model.sitter;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edu.wepet.domain.SitterDiary;
import com.edu.wepet.exception.SitterDiaryException;

@Service
public class SitterCertCategoryServiceImpl implements SitterCertCategoryService {


	@Autowired
	private SitterCertCategoryDAO sitterCertCategoryDAO;

	@Override
	public List selectAll() {
		return sitterCertCategoryDAO.selectAll();
	}

	@Override
	public List selectByCertificate(int certCategory_idx) {
		return sitterCertCategoryDAO.selectByCertificate(certCategory_idx);
	}
	
}
