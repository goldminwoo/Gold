package com.treefunding.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/guide")
public class GuideController {
	
	@RequestMapping(value = "/guide")
	public ModelAndView guide(ModelAndView mav) {
		mav.setViewName("guide/guide");
		return mav;
	}
	
	@RequestMapping(value = "/intro")
	public ModelAndView intro(ModelAndView mav) {
		mav.setViewName("guide/intro");
		return mav;
	}

}
