package com.edu.wepet.model.member;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.edu.wepet.domain.Addr1;

@Repository
public class MybatisAddr1DAO implements Addr1DAO{

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate; 
	
	@Override
	public void insert(String addr1_name) {
		sqlSessionTemplate.insert("Addr1.insert", addr1_name);
	}

	@Override
	public Addr1 select(int addr1_idx) {
		return sqlSessionTemplate.selectOne("Addr1.select", addr1_idx);
	}

}
