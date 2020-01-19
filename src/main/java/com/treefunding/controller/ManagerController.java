package com.treefunding.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.treefunding.service.MemberService;
import com.treefunding.service.StudioService;
import com.treefunding.vo.AdminAccountVO;
import com.treefunding.vo.InvestmentItemVO;
import com.treefunding.vo.InvestmentVO;
import com.treefunding.vo.MemberVO;
import com.treefunding.vo.RewardItemVO;
import com.treefunding.vo.RewardVO;

@Controller
@RequestMapping(value = "/manager")
public class ManagerController {

	@Autowired
	private MemberService memberService;

	@Autowired
	private StudioService studioService;
	
	/**	메인페이지
	 * 
	 * @param mav
	 * @return
	 */
	@RequestMapping(value = "/index")
	public ModelAndView index(ModelAndView mav,
			HttpSession session, HttpServletRequest request) {

		session=request.getSession();
		String id = (String)session.getAttribute("id");
		
		if(id.equals("admin")) {
			mav.setViewName("manager/manager_index");
			return mav;			
		}
		mav.setViewName("redirect:/");
		return mav;
	}

	/** 매니저 로그아웃
	 * 
	 * @param session
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/managerLogout")
	public ModelAndView logout(HttpSession session,
			HttpServletResponse response,
			ModelAndView mav) throws Exception{
		session.invalidate();//로그아웃 처리

		mav.setViewName("redirect:/");
		return mav;
	}

	@RequestMapping(value = "/investment")
	public ModelAndView investment(HttpServletRequest request, 
			ModelAndView mav, InvestmentVO investmentVO) {
		
		int page = 1;				//쪽번호
		int	pageLimit = 10;			//한 페이지에 보여지는 목록 개수
		if(ObjectUtils.isEmpty(request.getParameter("page")) == false) {
			//get으로 전달된 페이지 번호가 있는 경우
			page=Integer.parseInt(request.getParameter("page"));
			//페이지 번호를 숫자로 바꿔서 저장
		}

		int listCount = studioService.getInvestmentListCount();
		investmentVO.setStartRow((page-1)*10+1);					//시작행번호
		investmentVO.setEndRow(investmentVO.getStartRow()+pageLimit-1);	//끝행번호


		List<InvestmentVO> investmentList = studioService.getInvestmentList(investmentVO);
		//총페이지
		int maxPage=(int)((double)listCount/pageLimit+0.95);
		//시작페이지
		int startPage=(((int)((double)page/10+0.9))-1)*10+1;
		//마지막 페이지
		int endPage=maxPage;
		if(endPage > startPage +10 -1)
			endPage=startPage+10-1;

		mav.addObject("investmentList", investmentList);
		mav.addObject("page",page);
		mav.addObject("startPage",startPage);
		mav.addObject("endPage",endPage);
		mav.addObject("maxPage",maxPage);
		mav.addObject("listCount",listCount);
		mav.setViewName("manager/manager_investment");
		return mav;

	}
	
	@RequestMapping(value = "/investmentInfo")
	public ModelAndView investmentInfo(ModelAndView mav,
			int investmentTotalProjectNo) {

		InvestmentVO investmentVO = studioService.getInvestment(investmentTotalProjectNo);
		InvestmentItemVO investmentItemVO = studioService.getInvestmentItem(investmentTotalProjectNo);
		String mainImageVO=studioService.getInvestmentMainImage(investmentTotalProjectNo);
		mav.addObject("mainImage",mainImageVO);
		mav.addObject("investmentItemVO", investmentItemVO);
		mav.addObject("investmentVO", investmentVO);
		mav.setViewName("manager/manager_investment_info");
		return mav;
	}
	
	@RequestMapping(value = "/investmentOk")
	public ModelAndView investmentOk(ModelAndView mav,
			int investmentTotalProjectNo) {
		studioService.updateInvestmentApproved(investmentTotalProjectNo);
		
		mav.setViewName("redirect:investment");
		return mav;
	}

	/** Reward 신청 목록 페이지
	 * 
	 * @param request
	 * @param mav
	 * @param rewardVO
	 * @return
	 */
	@RequestMapping(value = "/reward")
	public ModelAndView reward(HttpServletRequest request, 
			ModelAndView mav, RewardVO rewardVO) {
		
		int page = 1;				//쪽번호
		int	pageLimit = 10;			//한 페이지에 보여지는 목록 개수
		if(ObjectUtils.isEmpty(request.getParameter("page")) == false) {
			//get으로 전달된 페이지 번호가 있는 경우
			page=Integer.parseInt(request.getParameter("page"));
			//페이지 번호를 숫자로 바꿔서 저장
		}

		int listCount = studioService.getRewardListCount();
		rewardVO.setStartRow((page-1)*10+1);					//시작행번호
		rewardVO.setEndRow(rewardVO.getStartRow()+pageLimit-1);	//끝행번호


		List<RewardVO> rewardList = studioService.getRewardList(rewardVO);
		//총페이지
		int maxPage=(int)((double)listCount/pageLimit+0.95);
		//시작페이지
		int startPage=(((int)((double)page/10+0.9))-1)*10+1;
		//마지막 페이지
		int endPage=maxPage;
		if(endPage > startPage +10 -1)
			endPage=startPage+10-1;

		mav.addObject("rewardList",rewardList);
		mav.addObject("page",page);
		mav.addObject("startPage",startPage);
		mav.addObject("endPage",endPage);
		mav.addObject("maxPage",maxPage);
		mav.addObject("listCount",listCount);
		mav.setViewName("manager/manager_reward");
		return mav;

	}

	@RequestMapping(value = "/rewardInfo")
	public ModelAndView rewardInfo(ModelAndView mav,
			int rewardTotalProjectNo) {
		
		RewardVO rewardVO = studioService.getReward(rewardTotalProjectNo);
		RewardItemVO rewardItemVO = studioService.getRewardItem(rewardTotalProjectNo);
		String mainImageVO=studioService.getRewardMainImage(rewardTotalProjectNo);
		mav.addObject("mainImage",mainImageVO);
		mav.addObject("rewardItemVO", rewardItemVO);
		mav.addObject("rewardVO", rewardVO);
		mav.setViewName("manager/manager_reward_info");
		return mav;
	}
	
	@RequestMapping(value = "/rewardOk")
	public ModelAndView rewardOk(ModelAndView mav,
			int rewardTotalProjectNo) {
		
		studioService.updateRewardApproved(rewardTotalProjectNo);
		
		mav.setViewName("redirect:reward");
		return mav;
	}
	
	/**	회원관리(회원정보 보는 페이지)
	 * 
	 * @param request
	 * @param mav
	 * @param rewardVO
	 * @return
	 */
	@RequestMapping(value = "/user")
	public ModelAndView user(HttpServletRequest request, 
			ModelAndView mav, MemberVO memberVO) {

		int page = 1;				//쪽번호
		int	pageLimit = 10;			//한 페이지에 보여지는 목록 개수
		if(ObjectUtils.isEmpty(request.getParameter("page")) == false) {
			//get으로 전달된 페이지 번호가 있는 경우
			page=Integer.parseInt(request.getParameter("page"));
			//페이지 번호를 숫자로 바꿔서 저장
		}

		int listCount = memberService.getListCount();
		memberVO.setStartRow((page-1)*10+1);					//시작행번호
		memberVO.setEndRow(memberVO.getStartRow()+pageLimit-1);	//끝행번호


		List<MemberVO> memberList = memberService.memberList(memberVO);
		//총페이지
		int maxPage=(int)((double)listCount/pageLimit+0.95);
		//시작페이지
		int startPage=(((int)((double)page/10+0.9))-1)*10+1;
		//마지막 페이지
		int endPage=maxPage;
		if(endPage > startPage +10 -1)
			endPage=startPage+10-1;

		mav.addObject("memberList",memberList);
		mav.addObject("page",page);
		mav.addObject("startPage",startPage);
		mav.addObject("endPage",endPage);
		mav.addObject("maxPage",maxPage);
		mav.addObject("listCount",listCount);
		mav.setViewName("manager/manager_user");
		return mav;
	}
	
	@RequestMapping(value = "/updateAdminPassword")
	public ModelAndView updateAdminPassword(ModelAndView mav) {
		
		mav.setViewName("manager/manager_password");
		return mav;
	}
	
	@RequestMapping(value = "/updateAdminPasswordOk")
	public ModelAndView updateAdminPasswordOk(ModelAndView mav,
			AdminAccountVO adminVO, @RequestParam(value="newPassword1",
			defaultValue="",required=false)String newPassword,
			@RequestParam(value="newPassword2", defaultValue="",required=false)
	String newPassword2) {
		
		AdminAccountVO resultVO = memberService.getAdminAccount(adminVO.getId());
		
		if(!(resultVO.getPassword().equals(adminVO.getPassword()))) { //관리자 비밀번호가 틀렸을 경우
			mav.addObject("msg", "비밀번호를 확인해주세요!");
			mav.addObject("url","updateAdminPassword");
			mav.setViewName("manager/alert");
		}else {	//관리자 비밀번호가 맞을 경우
			if(!(newPassword.equals(newPassword2))) { //비밀번호, 비밀번호 확인이 일치할 경우
				mav.addObject("msg", "비밀번호를 확인해주세요!");
				mav.addObject("url","updateAdminPassword");
				mav.setViewName("manager/alert");
			}else {	//비밀번호, 비밀번호확인이 일치할 경우
				adminVO.setPassword(newPassword);
				boolean result = memberService.updateAdminPassword(adminVO);
				if(result) {
					mav.addObject("msg", "비밀번호 변경 성공!");
					mav.addObject("url","index");
					mav.setViewName("manager/alert");
				}else {
					mav.addObject("msg", "비밀번호 변경 실패!");
					mav.addObject("url","index");
					mav.setViewName("manager/alert");
				}
			}
			
		}
		return mav;
	}

/*	@RequestMapping(value = "/reportYet")
	public ModelAndView reportYet(ModelAndView mav) {
		mav.setViewName("manager/manager_report_yet");
		return mav;
	}

	@RequestMapping(value = "/reportYetInfo")
	public ModelAndView reportYetInfo(ModelAndView mav) {
		mav.setViewName("manager/manager_report_yet_info");
		return mav;
	}

	@RequestMapping(value = "/reportComplete")
	public ModelAndView reportComplete(ModelAndView mav) {
		mav.setViewName("manager/manager_report_complete");
		return mav;
	}

	@RequestMapping(value = "/userBlockPopup")
	public ModelAndView userBlockPopup(ModelAndView mav) {
		mav.setViewName("manager/user_block_popup");
		return mav;
	}
*/
}
