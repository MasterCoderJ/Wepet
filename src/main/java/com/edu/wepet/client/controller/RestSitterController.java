package com.edu.wepet.client.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.edu.wepet.domain.Holiday;
import com.edu.wepet.domain.SitterDiary;
import com.edu.wepet.exception.HolidayException;
import com.edu.wepet.exception.SitterDiaryException;
import com.edu.wepet.model.holiday.HolidayService;
import com.edu.wepet.model.sitter.SitterDiaryService;
import com.edu.wepet.util.Message;

@RestController
@RequestMapping("/rest")
public class RestSitterController {
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private SitterDiaryService sitterDiaryService;
	
	@Autowired
	private HolidayService holidayService;
	

	
	@RequestMapping(value="/sitter", method=RequestMethod.POST)
	public ResponseEntity<Message> regist(SitterDiary sitterDiary, HttpServletRequest request) {
		
		logger.info("SitterDiary is "+sitterDiary);
		
		//3단계 
		sitterDiaryService.regist(sitterDiary);
		
		Message message = new Message();
		message.setMsg("등록 성공");
		
		ResponseEntity entity = new ResponseEntity<Message>(message, HttpStatus.OK);
		return entity;
	}

	@GetMapping("/holiday")
	public List<Holiday> getList(HttpServletRequest request){
		
		List registedHolidayList= holidayService.selectAll();
		
		logger.info("registedHolidayList"+registedHolidayList);
		
		return holidayService.selectAll();
		
	}
	
	@DeleteMapping("/holiday")
	public ResponseEntity<Message> deleteHoliday(HttpServletRequest request, @RequestBody Holiday holiday){
		
		holidayService.delete(holiday);
		
		logger.info("holiday"+ holiday);
		Message message= new Message();
		message.setMsg("휴무 삭제");
		
		ResponseEntity entity= new ResponseEntity<Message>(message, HttpStatus.OK);
		
		return entity;

	}
	
	
	//홀리데이 받기 
	@PostMapping("/holiday")
	public ResponseEntity<Message> registHoliday(HttpServletRequest request, @RequestBody List<Holiday> holidayList){
		
		logger.info("holidayList에 등록전 "+holidayList);
		
		holidayService.insert(holidayList);
		
		Message message= new Message();
		message.setMsg("휴무등록완료");
		
		ResponseEntity entity= new ResponseEntity<Message>(message, HttpStatus.OK);
		
		return entity;
	}
		
	
	@ExceptionHandler(HolidayException.class)
	public ResponseEntity<Message> handle(HolidayException e){
		
		Message message= new Message();
		message.setMsg(e.getMessage());
		
		ResponseEntity entity= new ResponseEntity<Message>(message, HttpStatus.BAD_REQUEST);
		
		return entity;

	}
	
	
	@ExceptionHandler(SitterDiaryException.class)
	public ResponseEntity<Message> handle(SitterDiaryException e){
		Message message = new Message();
		message.setMsg(e.getMessage());
		
		ResponseEntity entity = new ResponseEntity<Message>(message, HttpStatus.INTERNAL_SERVER_ERROR);
		return entity;
	}

}
