package com.edu.wepet.model.ordersummary;


import java.io.IOException;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.util.Base64;
import java.util.Base64.Encoder;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edu.wepet.domain.OrderSummary;

@Service
public class OrderSummaryServiceImpl implements OrderSummaryService{

	@Autowired
	private OrderSummaryDAO orderSummaryDAO;

	@Override
	public void insert(OrderSummary orderSummary) {
		orderSummaryDAO.insert(orderSummary);
	}

	@Override
	public OrderSummary select(int ordersummary_idx) {
		return orderSummaryDAO.select(ordersummary_idx);
	}

	@Override
	public void update(OrderSummary orderSummary) {
		orderSummaryDAO.update(orderSummary);
	} 
	


}
