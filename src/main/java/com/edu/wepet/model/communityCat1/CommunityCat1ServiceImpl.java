package com.edu.wepet.model.communityCat1;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edu.wepet.domain.CommunityCat1;


@Service
public class CommunityCat1ServiceImpl implements CommunityCat1Service{
	
	@Autowired
	private CommunityCat1DAO communityCat1DAO;

	@Override
	public List<CommunityCat1> selectAll() {
		// TODO Auto-generated method stub
		return communityCat1DAO.selectAll();
	}

	@Override
	public CommunityCat1 select(int community_cat1_idx) {
		// TODO Auto-generated method stub
		return communityCat1DAO.select(community_cat1_idx);
	}
	
	


}