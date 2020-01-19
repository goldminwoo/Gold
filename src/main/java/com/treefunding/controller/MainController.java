package com.treefunding.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.treefunding.service.StudioService;
import com.treefunding.vo.InvestmentVO;
import com.treefunding.vo.RewardVO;

@Controller
@RequestMapping(value = "/")
public class MainController {

	@Autowired
	private StudioService studioService;

   @RequestMapping(value = "")
   public ModelAndView index(ModelAndView mav,HttpSession session) {
	   List<InvestmentVO> approvedInvestment=studioService.investmentAll();//투자 메인페이지 불러오기
	   List<String> InvestmentMainImage=studioService.investmentMainImage();//투자 메인이미지 불러오기
	   List<String> investmentProduct=studioService.investmentProduct();//투자 상품 불러오기
	   
	   List<RewardVO> approvedReward=studioService.rewardAll();//투자 메인페이지 불러오기
	   List<String> RewardMainImage=studioService.rewardMainImage();//투자 메인이미지 불러오기
	   List<String> rewardProduct=studioService.rewardProduct();//투자 상품 불러오기
	   
	   mav.addObject("approvedInvestment",approvedInvestment);
	   mav.addObject("InvestmentMainImage",InvestmentMainImage);
	   mav.addObject("investmentProduct",investmentProduct);
	   
	   mav.addObject("approvedReward",approvedReward);
	   mav.addObject("RewardMainImage",RewardMainImage);
	   mav.addObject("rewardProduct",rewardProduct);
      mav.setViewName("index");
      return mav;
   }
}