package com.edu.wepet.client.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.edu.wepet.domain.Admin;
import com.edu.wepet.domain.PetSitter;
import com.edu.wepet.model.member.PetsitterService;
import com.edu.wepet.util.Message;

@RestController
@RequestMapping("/rest")
public class RestPetsitterController {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private PetsitterService petsitterService;
 
	/*
	 * //펫시터 회원가입 요청 처리
	 * 
	 * @PostMapping("/petsitter/apply") public ResponseEntity<Message>
	 * sitterRegist(PetSitter petSitter, HttpServletRequest request){
	 * logger.info("petsitter is" +petSitter);
	 * 
	 * 
	 * //세션에 담기 HttpSession session=request.getSession();
	 * session.setAttribute("petSitter", petSitter);
	 * 
	 * Message message = new Message(); message.setMsg("펫시터 가입 신청완료");
	 * 
	 * ResponseEntity entity = new ResponseEntity<Message>(message, HttpStatus.OK);
	 * return entity; }
	 */

}
