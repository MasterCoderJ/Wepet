package com.edu.wepet.model.sitter;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.edu.wepet.domain.SitterDiary;
import com.edu.wepet.exception.SitterDiaryException;

@Repository
public class MybatisSitterCertCategoryDAO  implements SitterCertCategoryDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List selectAll() {
		List list = sqlSessionTemplate.selectList("CertCategory.selectAll");
		return list;
	}

	@Override
	public List selectByCertificate(int certCategory_idx) {
		return sqlSessionTemplate.selectOne("CertCategory.selectByCertificate", certCategory_idx);
	}

}
