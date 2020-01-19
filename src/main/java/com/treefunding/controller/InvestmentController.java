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
import com.treefunding.vo.InvestmentItemVO;
import com.treefunding.vo.InvestmentStoryVO;
import com.treefunding.vo.InvestmentVO;
import com.treefunding.vo.MemberInvestmentFundingVO;
import com.treefunding.vo.MemberRewardFundingVO;
import com.treefunding.vo.MemberVO;
import com.treefunding.vo.RewardVO;

@Controller
@RequestMapping(value = "/investment")
public class InvestmentController {

	@Autowired
	private StudioService studioService;
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value = "/open")
	public ModelAndView investmentOpen(ModelAndView mav) {
		mav.setViewName("investment/investment_open");
		return mav;
	}
	
	@RequestMapping(value = "/investmentStory")
	   public ModelAndView investmentItem1Story(ModelAndView mav,HttpSession session,
			   HttpServletRequest request) {
		  int no=Integer.parseInt(request.getParameter("investmentTotalProjectNo"));
		  InvestmentVO investmentVO=studioService.getInvestment(no);
		  InvestmentItemVO investmentItemVO=studioService.getInvestmentItem(no);
		  InvestmentStoryVO investmentStoryVO=studioService.getInvestmentStory(no);
		  List<MemberInvestmentFundingVO> investf=studioService.idCountInvestmentFunding(no);
//		  int payPersent=investmentVO.getPay()/(investItemVO.getSoldEa()*investItemVO.getPrice());
		  
		  //no를 기준으로 검색한 펀딩한 투자들의 총 가격*개수 구현
		  int totalFundingPrice=0;
		  for(MemberInvestmentFundingVO f:investf) {
			  totalFundingPrice+=f.getFundingPrice();
		  }
		  
		  mav.addObject("investmentVO",investmentVO);
		  mav.addObject("investmentItemVO",investmentItemVO);
		  mav.addObject("investmentStoryVO",investmentStoryVO);
		  mav.addObject("totalFundingPrice",totalFundingPrice);
//		  mav.addObject("persent",payPersent);
	      mav.setViewName("investment/investment_story");
	      return mav;
	   }
	   @RequestMapping(value = "/investmentNews")
	   public ModelAndView investmentItem1News(ModelAndView mav) {
	      mav.setViewName("investment/investment_news");
	      return mav;
	   }
	   @RequestMapping(value = "/investmentCommunity")
	   public ModelAndView investmentItem1Community(ModelAndView mav) {
	      mav.setViewName("investment/investment_community");
	      return mav;
	   }
	   @RequestMapping(value = "/investmentFunding")
	   public ModelAndView investmentItem1Funding(ModelAndView mav,HttpSession session,
			   HttpServletRequest request,HttpServletResponse response)throws Exception {
		   response.setContentType("text/html;charset=UTF-8");
		   PrintWriter out=response.getWriter();
		   String id=(String)session.getAttribute("id");
		   int no=Integer.parseInt(request.getParameter("investmentTotalProjectNo"));
		   InvestmentVO investmentVO=studioService.getInvestment(no);
		   InvestmentItemVO investmentItemVO=studioService.getInvestmentItem(no);
		   if(id == null) {
			   out.println("<script>");
			   out.println("alert('로그인 후 이용해주세요!');");
			   out.println("location='/treeproject';");
			   out.println("</script>");
		   }
		   mav.addObject("no",no);
		   mav.addObject("investmentVO",investmentVO);
		   mav.addObject("investmentItemVO",investmentItemVO);
		   mav.setViewName("investment/investment_funding");
		   return mav;
	   }
	   
	   @RequestMapping(value = "/investmentBillingReservation")
	   public ModelAndView investmentBillingReservation(ModelAndView mav,HttpSession session,
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
		   mav.setViewName("investment/investment_billingReservation");
		   return mav;
	   }
	   
	   @RequestMapping(value = "/investmentBillingReservationOk")
	   public String investmentBillingReservationOk(ModelAndView mav,HttpSession session,
			   HttpServletRequest request,HttpServletResponse response,
			   MemberInvestmentFundingVO memberInvestmentFundingVO)throws Exception {
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
		   memberInvestmentFundingVO.setId(id);
		   MemberVO memberVO=memberService.idCheck(id);
		   if(memberInvestmentFundingVO.getFundingPrice()>memberVO.getCredit()) {
			   out.println("<script>");
			   out.println("alert('크레딧이 부족합니다.크레딧 충전 후 펀딩해주세요!');");
			   out.println("location='main';");
			   out.println("</script>");
			   return null;
		   }
		   memberService.updateCredit(memberInvestmentFundingVO);
		   studioService.updateInvestmentSoldEa(memberInvestmentFundingVO);
		   studioService.insertMemberInvestmentFunding(memberInvestmentFundingVO);
		   out.println("<script>");
		   out.println("alert('펀딩이 완료되었습니다!');");
		   out.println("location='main';");
		   out.println("</script>");
		   return null;
	   }
	  
	   @RequestMapping(value = "/main")
	   public ModelAndView investmentMain(ModelAndView mav) {
		   List<InvestmentVO> approvedInvestment=studioService.investmentAll();//투자 메인페이지 불러오기
		   List<String> InvestmentMainImage=studioService.investmentMainImage();//투자 메인이미지 불러오기
		   
		   mav.addObject("approvedInvestment",approvedInvestment);
		   mav.addObject("InvestmentMainImage",InvestmentMainImage);
		   mav.setViewName("investment/investment_main");
		   return mav;
	   }

}
