package com.edu.wepet.client.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.edu.wepet.domain.PetSitter;
import com.edu.wepet.model.holiday.HolidayService;
import com.edu.wepet.model.member.PetsitterService;

@Controller
public class ClientController {
	
	@Autowired
	private HolidayService holidayService;
	
	@Autowired
	private PetsitterService petSitterService;
	
	private Logger logger= LoggerFactory.getLogger(this.getClass());
	
	@GetMapping("/reservation")
	public ModelAndView getCalendar(@RequestParam int petsitter_idx, HttpServletRequest request) {
		
		PetSitter petSitter=petSitterService.select(petsitter_idx);
		ModelAndView mav= new ModelAndView();
		
		mav.addObject(petSitter);
		mav.setViewName("wepet/client/client_reservation_form");
		
		return mav;
	}
	
	@GetMapping("/sitterlist")
    public ModelAndView getSitterList(HttpServletRequest request) {

        List petsitterList  =petSitterService.selectAll();

        ModelAndView mav= new ModelAndView();

        mav.setViewName("wepet/client/petsitter/petsitter_list");
        mav.addObject("petsitterList", petsitterList);

        return mav;
    }



}
