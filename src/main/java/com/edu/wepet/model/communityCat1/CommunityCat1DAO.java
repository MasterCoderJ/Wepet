package com.edu.wepet.model.communityCat1;

import java.util.List;

import com.edu.wepet.domain.CommunityCat1;

public interface CommunityCat1DAO {
	public List<CommunityCat1> selectAll();
	public CommunityCat1 select(int community_cat1_idx);
}
