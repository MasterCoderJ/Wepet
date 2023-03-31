package com.edu.wepet.model.communityCat2;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.edu.wepet.domain.CommunityCat2;

@Repository
public class MybatisCommunityCat2DAO implements CommunityCat2DAO{
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public List<CommunityCat2> selectAll() {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("CommunityCat2.selectAll");
	}

	@Override
	public CommunityCat2 select(int community_cat2_idx) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("CommunityCat2.select", community_cat2_idx);
	}

}
