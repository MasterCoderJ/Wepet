package com.edu.wepet.model.sitter;

import java.util.List;

import com.edu.wepet.domain.Certificate;

public interface SitterCertificateService {

	public List selectAll();
	public Certificate select(int certificate_idx);
	public void regist(Certificate certificate);
	public void update(Certificate certificate);
	public void delete(int certificate_idx);
}
