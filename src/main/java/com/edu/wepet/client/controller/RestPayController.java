package com.edu.wepet.client.controller;


import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.edu.wepet.domain.Addr1;
import com.edu.wepet.domain.BoardReview;
import com.edu.wepet.domain.OrderSummary;
import com.edu.wepet.domain.PetSitter;
import com.edu.wepet.model.member.Addr1Service;
import com.edu.wepet.model.boardreview.BoardReviewService;
import com.edu.wepet.model.member.EmailService;
import com.edu.wepet.model.member.PetsitterService;
import com.edu.wepet.model.ordersummary.OrderSummaryService;
import com.edu.wepet.model.member.PhoneService;
import com.edu.wepet.util.Message;

@RestController
@RequestMapping("/rest")
public class RestPayController {
	
	@Autowired
	private Addr1Service addr1Service;
	@Autowired
	private PhoneService phoneService; 
	@Autowired
	private EmailService emailService;
	@Autowired
	private OrderSummaryService orderSummaryService; 
	@Autowired
	private PetsitterService petsitterService; 
	
	
	
	@GetMapping("/encode")
	public String getEncode(HttpServletRequest request) {

		int leftLimit = 97; // letter 'a'
		int rightLimit = 122; // letter 'z'
		int targetStringLength = 10;
		Random random = new Random();
		StringBuilder buffer = new StringBuilder(targetStringLength);
		
		
		
		for (int i = 0; i < targetStringLength; i++) {
		    int randomLimitedInt = leftLimit + (int)
		            (random.nextFloat() * (rightLimit - leftLimit + 1));
		    buffer.append((char) randomLimitedInt);
		}
		String generatedString = buffer.toString();
		System.out.println(generatedString);	
		
		
		return generatedString;
	}	
	
	@GetMapping("/getNick")
	public PetSitter getNick(@RequestParam String petsitter_idx, HttpServletRequest request ) {
		PetSitter petSitter=petsitterService.select(Integer.parseInt(petsitter_idx));		
		return petSitter;
	}	
	
	

	@PostMapping("/registAddr")
	public ResponseEntity<Message> registAddr(@RequestParam String addr1_name, String phoneNumber, String emailaddr, HttpServletRequest request ) {
		
		addr1Service.insert(addr1_name);
//		phoneService.insert(phoneNumber);
//		emailService.insert(emailaddr);
		
		Message message=new Message();
		message.setMsg("정보 입력 성공");
		ResponseEntity<Message> entity=null;
		entity=new ResponseEntity<Message>(message, HttpStatus.OK);
		
		System.out.println("entity : "+entity);
		
		return entity;
	}	
	
	
	@PostMapping("/urlparam")
	public ResponseEntity<Message> getParam(@RequestParam String petsitter_idx, String msg, String petkinds, String rdays, int ordersummary_idx, HttpServletRequest request) {
		
		System.out.println(ordersummary_idx);
		System.out.println(rdays);
		System.out.println(petkinds);
		System.out.println(msg);
		System.out.println(petsitter_idx);
		
		
		OrderSummary orderSummary=new OrderSummary();
		orderSummary.setOrdersummary_idx(ordersummary_idx);
		orderSummary.setRdays(rdays);
		orderSummary.setPetkinds(petkinds);
		orderSummary.setMsg(msg);
		orderSummary.setPetsitter_idx(Integer.parseInt(petsitter_idx));
		
		orderSummaryService.update(orderSummary);
		
		Message message=new Message();
		message.setMsg("정보 입력 성공");
		ResponseEntity<Message> entity=null;
		entity=new ResponseEntity<Message>(message, HttpStatus.OK);
		
		return entity;
	}	
	
	
}
