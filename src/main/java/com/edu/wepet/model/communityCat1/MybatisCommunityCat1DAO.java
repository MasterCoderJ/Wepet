package com.edu.wepet.model.communityCat1;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.edu.wepet.domain.CommunityCat1;

@Repository
public class MybatisCommunityCat1DAO implements CommunityCat1DAO{
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public List<CommunityCat1> selectAll() {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("CommunityCat1.selectAll");
	}

	@Override
	public CommunityCat1 select(int community_cat1_idx) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("CommunityCat1.select", community_cat1_idx);
	}

}
