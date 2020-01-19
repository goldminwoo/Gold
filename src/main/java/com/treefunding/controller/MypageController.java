package com.treefunding.controller;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.treefunding.service.MemberService;
import com.treefunding.service.StudioService;
import com.treefunding.vo.CreditVO;
import com.treefunding.vo.InvestmentVO;
import com.treefunding.vo.MemberInvestmentFundingVO;
import com.treefunding.vo.MemberRewardFundingVO;
import com.treefunding.vo.MemberVO;
import com.treefunding.vo.RewardVO;

@Controller
@RequestMapping(value = "/mypage")
public class MypageController {

	@Autowired
	private StudioService studioService;
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value = "/mypage")
	public ModelAndView mypage(ModelAndView mav,HttpServletResponse response,HttpServletRequest request,
			HttpSession session) throws Exception{
		response.setContentType("text/html;charset=UTF-8");
	    PrintWriter out=response.getWriter();         //출력스트림
		session=request.getSession();
		String id=(String)session.getAttribute("id");
		if(id==null) {   //로그인이 안되었을때
	         out.println("<script>");
	         out.println("alert('로그인을 해주세요');");
	         out.println("history.back();");
	         out.println("</script>");
		}else {
			MemberVO m=memberService.idCheck(id);
			List<RewardVO> r=studioService.idCountReward(id);
			List<InvestmentVO> i=studioService.idCountInvestment(id);
			int investmentCount=studioService.investmentIdCount(id);
			int rewardCount=studioService.rewardIdCount(id);
			int count=0;
			int fundingCount=investmentCount+rewardCount;
			for(RewardVO d:r){//아이디 별로 리워드 만든 수
				count++;
			}
			for(InvestmentVO s:i){//아이디 별로 투자 만든 수
				count++;
			}
			mav.addObject("r",r);
			mav.addObject("m",m);
			mav.addObject("count",count);
			mav.addObject("fundingCount",fundingCount);
			mav.setViewName("mypage/mypage");
			return mav;
		}
		return null;
	}

	@RequestMapping(value = "/account")
	public ModelAndView account(ModelAndView mav,HttpSession session) {
		String id=(String)session.getAttribute("id");
		MemberVO memberVO=memberService.idCheck(id);
		mav.addObject("credit",memberVO.getCredit());
		mav.setViewName("mypage/account");
		return mav;
	}
	
	@RequestMapping(value = "/calculate")
	public ModelAndView calculate(ModelAndView mav) {
		mav.setViewName("mypage/calculate");
		return mav;
	}

	@RequestMapping(value = "/editProfile")
	public ModelAndView editProfile(ModelAndView mav, HttpSession session) {

		MemberVO memberVO = memberService.idCheck((String)session.getAttribute("id"));
		
		mav.addObject("memberVO",memberVO);

		mav.setViewName("mypage/edit_profile");
		return mav;
	}
	
	@RequestMapping(value = "/editProfileOk")
	public ModelAndView editProfileOk(ModelAndView mav, MemberVO memberVO) {
		
		if(memberService.updateProfile(memberVO)) {	//회원정보수정 성공
			mav.addObject("message", "회원정보 수정 성공");
			mav.setViewName("redirect:/");
		}else {	//회원정보수정 실패
			mav.addObject("message", "회원정보 수정 실패");
			mav.setViewName("redirect:/");
		}
		
		return mav;
	}
	
	@RequestMapping(value = "/withdraw")
	@ResponseBody
	public boolean withdraw(HttpSession session,
			String id) {
		
		boolean result = memberService.withdraw(id); //activeStatus를 탈퇴로 바꿈
		session.invalidate();	//로그아웃
		return result;
	}
	
	@RequestMapping(value = "/creditWithdraw")
	public String creditIn(ModelAndView mav,HttpSession session,HttpServletRequest request,
			HttpServletResponse response)throws Exception {		
		response.setContentType("text/html;charset=UTF-8");
	    PrintWriter out=response.getWriter();         //출력스트림
		session=request.getSession();
		CreditVO creditVO=new CreditVO();
		int priceIn=Integer.parseInt(request.getParameter("priceIn"));
		String id=(String)session.getAttribute("id");
		creditVO.setId(id);
		creditVO.setCredit(priceIn);
		if(id==null) {   //로그인이 안되었을때
	         out.println("<script>");
	         out.println("alert('로그인을 해주세요');");
	         out.println("history.back();");
	         out.println("</script>");
		}
		memberService.creditWithdraw(creditVO);
		out.println("<script>");
		out.println("alert('출금이 완료되었습니다!');");
		out.println("window.close();");
		out.println("location='mypage';");
		out.println("</script>");
		return null;
	}
	
	@RequestMapping(value = "/creditCharge")
	public String creditCharge(ModelAndView mav,HttpSession session,HttpServletRequest request,
			HttpServletResponse response)throws Exception {		
		response.setContentType("text/html;charset=UTF-8");
	    PrintWriter out=response.getWriter();         //출력스트림
		session=request.getSession();
		CreditVO creditVO=new CreditVO();
		int priceOut=Integer.parseInt(request.getParameter("priceOut"));
		String id=(String)session.getAttribute("id");
		creditVO.setId(id);
		creditVO.setCredit(priceOut);
		if(id==null) {   //로그인이 안되었을때
	         out.println("<script>");
	         out.println("alert('로그인을 해주세요');");
	         out.println("history.back();");
	         out.println("</script>");
		}
		memberService.creditCharge(creditVO);
		out.println("<script>");
		out.println("alert('충전이 완료되었습니다!');");
		out.println("window.close();");
		out.println("location='mypage';");
		out.println("</script>");
		return null;
	}
	
}