package com.edu.wepet.client.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.edu.wepet.domain.Member;
import com.edu.wepet.domain.PetSitter;
import com.edu.wepet.model.member.PetsitterService;
import com.edu.wepet.model.member.SitterApplyService;

@Controller
public class PesitterController {
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private PetsitterService petsitterService;
	
	//펫시터 지원 폼 페이지 
	@GetMapping("/petsitter/registform")
	public ModelAndView getApply(HttpServletRequest request) {
		
		ModelAndView mav = new ModelAndView("wepet/client/petsitter/registform");
		
		return mav;
	}

	//펫시터 등록 요청처리
	@PostMapping("/petsitter/apply")
	public ModelAndView regist(PetSitter petSitter, HttpServletRequest request) {
		
		logger.info("petsitter is" +petSitter);
		
		//펫시터 dto에서 필요로 하는데 (이휴 : 펫시터로 전환하고자 하는 어느 회원인지를 알려줘야 하니까 )
		//어느회원인지를 알려준다 = member에서 idx를 얻어오기 위함(누가)
		HttpSession session =  request.getSession();
		Member member =(Member)session.getAttribute("member");
		
		//기존 펫시터에 가입직전에,  member 내용 추가
		petSitter.setMember(member);
		petsitterService.regist(petSitter);
		
		ModelAndView mav = new ModelAndView("redirect:/");
		return mav;
	}
	@GetMapping("/sitter/mypage")
	public ModelAndView getSitterProfile(HttpServletRequest request) {
		
		ModelAndView mav = new ModelAndView("wepet/client/page/sitter_profile");
		return mav;
	}
	
	@GetMapping("/sitter/unregister")
	public ModelAndView getSitterUnregister(HttpServletRequest request) {
		
		ModelAndView mav = new ModelAndView("wepet/client/page/sitter_unregister");
		return mav;
	}

	@GetMapping("/sitter/schedule")
	public ModelAndView getSitterSchedule(HttpServletRequest request) {
		
		ModelAndView mav = new ModelAndView("wepet/client/page/sitter_schedule");
		return mav;
	}
	
	@GetMapping("/sitter/like")
	public ModelAndView getSitterHeart(HttpServletRequest request) {
		
		ModelAndView mav = new ModelAndView("wepet/client/page/sitter_heart");
		return mav;
	}
	
	@GetMapping("/sitter/chat")
	public ModelAndView getSitterTalk(HttpServletRequest request) {
		
		ModelAndView mav = new ModelAndView("wepet/client/page/sitter_talk");
		return mav;
	}
	
	@GetMapping("/sitter/board")
	public ModelAndView getSitterBoard(HttpServletRequest request) {
		
		ModelAndView mav = new ModelAndView("wepet/client/page/sitter_board");
		return mav;
	}
	
	@GetMapping("/sitter/diary")
	public ModelAndView getSitterDiary(HttpServletRequest request) {
		
		ModelAndView mav = new ModelAndView("wepet/client/page/sitter_diary");
		return mav;
	}
	@GetMapping("/sitter/registform")
	public ModelAndView getSitterDiaryRegist(HttpServletRequest request) {
		
		ModelAndView mav = new ModelAndView("wepet/client/page/sitter_diary_regist");
		return mav;
	}
	
	
	@GetMapping("/sitter/inquiry")
	public ModelAndView getSitterInquiry(HttpServletRequest request) {
		
		ModelAndView mav = new ModelAndView("wepet/client/page/sitter_inquiry");
		return mav;
	}
	
	@GetMapping("/sitter/balance")
	public ModelAndView getSitterBalance(HttpServletRequest request) {
		
		ModelAndView mav = new ModelAndView("wepet/client/page/sitter_balance");
		return mav;
	}
	@GetMapping("/sitter/map")
	public ModelAndView getSitterLocation(HttpServletRequest request) {
		
		ModelAndView mav = new ModelAndView("wepet/client/page/sitter_map");
		return mav;
	}
	
	
}
