package com.edu.wepet.model.sitter;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edu.wepet.domain.Certificate;
import com.edu.wepet.domain.SitterDiary;
import com.edu.wepet.exception.SitterDiaryException;

@Service
public class SitterCertificateServiceImpl implements SitterCertificateService {


	@Autowired
	private SitterCertificateDAO sitterCertificateDAO;

	@Override
	public List selectAll() {
		return sitterCertificateDAO.selectAll();
	}

	@Override
	public Certificate select(int certificate_idx) {
		return sitterCertificateDAO.select(certificate_idx);
	}

	@Override
	public void regist(Certificate certificate) {
		sitterCertificateDAO.insert(certificate);
		
	}

	@Override
	public void update(Certificate certificate) {
		sitterCertificateDAO.update(certificate);
		
	}

	@Override
	public void delete(int certificate_idx) {
		sitterCertificateDAO.delete(certificate_idx);
		
	}


	
}
