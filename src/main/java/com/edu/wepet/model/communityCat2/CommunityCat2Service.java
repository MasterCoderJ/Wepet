package com.edu.wepet.model.communityCat2;

import java.util.List;

import com.edu.wepet.domain.CommunityCat2;

public interface CommunityCat2Service {
	public List<CommunityCat2> selectAll();
	public CommunityCat2 select(int community_cat2_idx);
}
