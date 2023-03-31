package com.edu.wepet.model.ordersummary;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.edu.wepet.domain.OrderSummary;

@Repository
public class MybatisOrderSummaryDAO implements OrderSummaryDAO{

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public void insert(OrderSummary orderSummary) {
		sqlSessionTemplate.insert("OrderSummary.insert", orderSummary);
	}

	@Override
	public OrderSummary select(int ordersummary_idx) {
		OrderSummary orderSummary=sqlSessionTemplate.selectOne("OrderSummary.select", ordersummary_idx);
		return orderSummary;
	}

	@Override
	public void update(OrderSummary orderSummary) {
		sqlSessionTemplate.update("OrderSummary.update", orderSummary);
	}
	
}
