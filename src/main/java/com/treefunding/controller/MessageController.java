package com.treefunding.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/message")
public class MessageController {
	
	@RequestMapping(value = "/message")
	public ModelAndView message(ModelAndView mav) {
		mav.setViewName("message/message");
		return mav;
	}

}
