package com.edu.wepet.model.communityCat2;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edu.wepet.domain.CommunityCat2;



@Service
public class CommunityCat2ServiceImpl implements CommunityCat2Service{
	
	@Autowired
	private CommunityCat2DAO communityCat2DAO;

	@Override
	public List<CommunityCat2> selectAll() {
		// TODO Auto-generated method stub
		return communityCat2DAO.selectAll();
	}

	@Override
	public CommunityCat2 select(int community_cat2_idx) {
		// TODO Auto-generated method stub
		return communityCat2DAO.select(community_cat2_idx);
	}

}
