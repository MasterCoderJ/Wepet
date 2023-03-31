package com.edu.wepet.model.sitter;

import java.util.List;

import com.edu.wepet.domain.Certificate;

public interface SitterCertificateDAO {

	public List selectAll();
	public Certificate select(int certificate_idx);
	public void insert(Certificate certificate);
	public void update(Certificate certificate);
	public void delete(int certificate_idx);
	
}
