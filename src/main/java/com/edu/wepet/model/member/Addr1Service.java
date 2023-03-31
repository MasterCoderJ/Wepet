package com.edu.wepet.model.member;


import com.edu.wepet.domain.Addr1;

public interface Addr1Service {

	public void insert(String addr1_name);
	public Addr1 select(int addr1_idx);
}
