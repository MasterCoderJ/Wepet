package com.edu.wepet.model.sitter;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.edu.wepet.domain.Certificate;
import com.edu.wepet.exception.SitterCertificateException;

@Repository
public class MybatisSitterCertificateDAO  implements SitterCertificateDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List selectAll() {
		List list = sqlSessionTemplate.selectList("Certificate.selectAll");
		return list;
	}

	@Override
	public Certificate select(int certificate_idx) {
		return sqlSessionTemplate.selectOne("Certificate.select", certificate_idx);
	}

	@Override
	public void insert(Certificate certificate) {
		int result = sqlSessionTemplate.insert("Certificate.insert", certificate);
		if(result < 1) {
			throw new SitterCertificateException("등록실패");
		}
	}

	@Override
	public void update(Certificate certificate) {
		int result = sqlSessionTemplate.insert("Certificate.update", certificate);
		if(result < 1) {
			throw new SitterCertificateException("수정실패");
		}
	}

	@Override
	public void delete(int certificate_idx) {
		int result = sqlSessionTemplate.delete("Certificate.delete", certificate_idx);
		if(result < 1) {
			throw new SitterCertificateException("삭제실패");
		}
	}

}
