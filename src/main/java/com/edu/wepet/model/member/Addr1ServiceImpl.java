package com.edu.wepet.model.member;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edu.wepet.domain.Addr1;

@Service
public class Addr1ServiceImpl implements Addr1Service{

	@Autowired
	private Addr1DAO addr1dao;

	@Override
	public void insert(String addr1_name) {
		addr1dao.insert(addr1_name);
	}

	@Override
	public Addr1 select(int addr1_idx) {
		return addr1dao.select(addr1_idx);
	}
	
}
