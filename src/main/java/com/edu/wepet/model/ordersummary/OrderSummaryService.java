package com.edu.wepet.model.ordersummary;


import com.edu.wepet.domain.OrderSummary;

public interface OrderSummaryService {
	
	public void insert(OrderSummary orderSummary );
	public void update(OrderSummary orderSummary);
	public OrderSummary select(int ordersummary_idx);


}
