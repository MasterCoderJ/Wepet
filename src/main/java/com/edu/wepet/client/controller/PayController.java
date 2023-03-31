package com.edu.wepet.client.controller;


import java.io.IOException;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.util.Base64;
import java.util.Base64.Encoder;

import javax.servlet.http.HttpServletRequest;

import java.util.List;
import java.util.Map;
import java.util.Random;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.edu.wepet.domain.BoardReview;
import com.edu.wepet.domain.OrderSummary;
import com.edu.wepet.domain.PetSitter;
import com.edu.wepet.model.boardreview.BoardReviewService;
import com.edu.wepet.model.member.PetsitterService;
import com.edu.wepet.model.ordersummary.OrderSummaryService;
import com.edu.wepet.util.Encoding;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

@Controller
public class PayController {
	
	private Logger logger=LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private BoardReviewService boardReviewService;
	
	@Autowired
	private OrderSummaryService orderSummaryService; 
	
	@Autowired
	private PetsitterService petsitterService; 
	
	@PostMapping("/pay")
	public ModelAndView getPay(@RequestParam int petsitter_idx, HttpServletRequest request) {
		
		PetSitter petSitter=petsitterService.select(petsitter_idx);
		
		ModelAndView mav=new ModelAndView();
		mav.addObject(petSitter);
		mav.setViewName("wepet/client/payment/pay");
		
		return mav;
	}	
	

	@RequestMapping(value = "/payment/callback/success", method = RequestMethod.GET)
	public ModelAndView Payment(HttpServletRequest httpServletRequest, String paymentKey, String orderId, int amount) {
		logger.info("결제요청 성공");
		
		int ordersummary_idx = 0;
		
		//OrderSummary afterOrder = null;
		
		//결제승인 요청(post방식으로 승인을 요청해야 한다.)
		HttpRequest req = HttpRequest.newBuilder()
			    .uri(URI.create("https://api.tosspayments.com/v1/payments/confirm"))
			    .header("Authorization", "Basic dGVzdF9za19ZWjFhT3dYN0s4bTYwUlB3N3FxM3lReHp2TlBHOg==")
			    .header("Content-Type", "application/json")
			    .method("POST", HttpRequest.BodyPublishers.ofString("{\"paymentKey\":\""+paymentKey+"\",\"amount\":"+amount+",\"orderId\":\""+orderId+"\"}"))
			    .build();
			try {
				HttpResponse<String> response = HttpClient.newHttpClient().send(req, HttpResponse.BodyHandlers.ofString());
				logger.info("결제 승인 요청 결과"+response.body());
				String a=response.body();
				
				ObjectMapper objectMapper = new ObjectMapper();

				Map<String, Object> person = objectMapper.readValue(a, new TypeReference<Map<String, Object>>() {});
				String orderName = person.get("orderName").toString();
				String method = person.get("method").toString();
				String requestedAt = person.get("requestedAt").toString();

//				System.out.println(orderName);
//				System.out.println(method);
//				System.out.println(requestedAt);
//				System.out.println(orderId);
				
				OrderSummary orderSummary=new OrderSummary();
				orderSummary.setOrderId(orderId);
				orderSummary.setOrderName(orderName);
				orderSummary.setAmount(amount);
				orderSummary.setMethod(method);
				orderSummary.setRequestedAt(requestedAt);
				orderSummary.setPetsitter_idx(43);
				
				orderSummaryService.insert(orderSummary);
				ordersummary_idx=orderSummary.getOrdersummary_idx();
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		
			//1 주문요약 ordersummary insert, pk를 selectkey로 얻어와, orderdetail에 적용해야함		
			//orderSummaryService.insert(orderSummary);
			
			//2 주문상세 orderdetail (2건 이상일 경우 반복문으로 태랜잭션 걸어서)
			//장바구니에 들어있는 상품만큼 반복문 돌린다.
			
			//3 장바구니 테이블 비우기 (delete)
			
			//4 이메일전송, 문자전송, 카톡메시지 전송
			
			//5 결제결과
			OrderSummary orderSummary=orderSummaryService.select(ordersummary_idx);
			ModelAndView mav=new ModelAndView();
			mav.addObject(orderSummary);
			mav.setViewName("wepet/client/payment/success");
			
			return mav; 	
	}
	
	@PostMapping("/payment/callback/fail")
	public String failUrl(HttpServletRequest request) {
		return "wepet/client/payment/fail";
	}
	
	
}
