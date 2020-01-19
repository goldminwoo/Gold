package com.treefunding.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.treefunding.service.MemberService;
import com.treefunding.service.StudioService;
import com.treefunding.vo.InvestmentVO;
import com.treefunding.vo.MemberInvestmentFundingVO;
import com.treefunding.vo.MemberRewardFundingVO;
import com.treefunding.vo.MemberVO;
import com.treefunding.vo.RewardItemVO;
import com.treefunding.vo.RewardStoryVO;
import com.treefunding.vo.RewardVO;

@Controller
@RequestMapping(value = "/reward")
public class RewardController {

	@Autowired
	private StudioService studioService;
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value = "/open")
	public ModelAndView rewardOpen(ModelAndView mav) {
		mav.setViewName("reward/reward_open");
		return mav;
	}
	
	@RequestMapping(value = "/rewardStory")
	   public ModelAndView rewardItem1Story(ModelAndView mav,HttpSession session,
			   HttpServletRequest request) {
		  int no=Integer.parseInt(request.getParameter("rewardTotalProjectNo"));
		  RewardVO rewardVO=studioService.getReward(no);
		  RewardItemVO rewardItemVO=studioService.getRewardItem(no);
		  RewardStoryVO rewardStoryVO=studioService.getRewardStory(no);
		  List<MemberRewardFundingVO> rewardf=studioService.idCountRewardFunding(no);
//		  int payPersent=rewardVO.getPay()/(rewardItemVO.getSoldEa()*rewardItemVO.getPrice());
		  //no를 기준으로 검색한 펀딩한 투자들의 총 가격*개수 구현
		  int totalFundingPrice=0;
		  for(MemberRewardFundingVO f:rewardf) {
			  totalFundingPrice+=f.getFundingPrice();
		  }
		  
		  mav.addObject("rewardVO",rewardVO);
		  mav.addObject("rewardItemVO",rewardItemVO);
		  mav.addObject("rewardStoryVO",rewardStoryVO);
		  mav.addObject("totalFundingPrice",totalFundingPrice);
//		  mav.addObject("persent",payPersent);
	      mav.setViewName("reward/reward_story");
	      return mav;
	   }
	   @RequestMapping(value = "/rewardNews")
	   public ModelAndView rewardItem1News(ModelAndView mav) {
	      mav.setViewName("reward/reward_news");
	      return mav;
	   }
	   @RequestMapping(value = "/rewardCommunity")
	   public ModelAndView rewardItem1Community(ModelAndView mav) {
	      mav.setViewName("reward/reward_community");
	      return mav;
	   }
	   @RequestMapping(value = "/rewardFunding")
	   public ModelAndView rewardItem1Funding(ModelAndView mav,HttpSession session,
			   HttpServletRequest request) {
		   String id=(String)session.getAttribute("id");
		   int no=Integer.parseInt(request.getParameter("rewardTotalProjectNo"));
		   RewardVO rewardVO=studioService.getReward(no);
		   RewardItemVO rewardItemVO=studioService.getRewardItem(no);
		   mav.addObject("no",no);
		   mav.addObject("rewardVO",rewardVO);
		   mav.addObject("rewardItemVO",rewardItemVO);
		   mav.setViewName("reward/reward_funding");
		   return mav;
	   }
	   
	   @RequestMapping(value = "/rewardBillingReservation")
	   public ModelAndView rewardBillingReservation(ModelAndView mav,HttpSession session,
			   HttpServletRequest request) {
		   String options=request.getParameter("options");
		   String productName=request.getParameter("productName");
		   String benefits=request.getParameter("benefits");
		   int no=Integer.parseInt(request.getParameter("no"));
		   int fundingPrice=Integer.parseInt(request.getParameter("fundingPrice"));
		   int ea=Integer.parseInt(request.getParameter("ea"));
		   mav.addObject("options",options);
		   mav.addObject("productName",productName);
		   mav.addObject("fundingPrice",fundingPrice);
		   mav.addObject("ea",ea);
		   mav.addObject("benefits",benefits);
		   mav.addObject("no",no);
		   mav.setViewName("reward/reward_billingReservation");
		   return mav;
	   }
	   
	   @RequestMapping(value = "/rewardBillingReservationOk")
	   public String rewardBillingReservationOk(ModelAndView mav,HttpSession session,
			   HttpServletRequest request,HttpServletResponse response,
			   MemberRewardFundingVO memberRewardFundingVO)throws Exception {
		   response.setContentType("text/html;charset=UTF-8");
		   session=request.getSession();
		   PrintWriter out=response.getWriter();
		   String id=(String)session.getAttribute("id");
		   if(id == null) {
			   out.println("<script>");
			   out.println("alert('로그인 후 이용해주세요!');");
			   out.println("location='/treeproject';");
			   out.println("</script>");
		   }
		   memberRewardFundingVO.setId(id);
		   MemberVO memberVO=memberService.idCheck(id);
		   if(memberRewardFundingVO.getFundingPrice()>memberVO.getCredit()) {
			   out.println("<script>");
			   out.println("alert('크레딧이 부족합니다.크레딧 충전 후 펀딩해주세요!');");
			   out.println("location='main';");
			   out.println("</script>");
			   return null;
		   }
		   memberService.updateCredit(memberRewardFundingVO);
		   studioService.updateRewardSoldEa(memberRewardFundingVO);
		   studioService.insertMemberRewardFunding(memberRewardFundingVO);
		   out.println("<script>");
		   out.println("alert('펀딩이 완료되었습니다!');");
		   out.println("location='main';");
		   out.println("</script>");
		   return null;
	   }
	   
	   @RequestMapping(value = "/main")
	   public ModelAndView rewardMain(ModelAndView mav) {
		   List<RewardVO> approvedReward=studioService.rewardAll();//리워드 메인페이지 불러오기
		   List<String> RewardMainImage=studioService.rewardMainImage();//리워드 메인이미지 불러오기
		   mav.addObject("approvedReward",approvedReward);
		   mav.addObject("RewardMainImage",RewardMainImage);
		   mav.setViewName("reward/reward_main");
		   return mav;
	   }

}
