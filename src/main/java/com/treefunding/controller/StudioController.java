package com.treefunding.controller;

import java.io.File;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.oreilly.servlet.MultipartRequest;
import com.treefunding.service.MemberService;
import com.treefunding.service.StudioService;
import com.treefunding.vo.InvestmentItemVO;
import com.treefunding.vo.InvestmentMainImageVO;
import com.treefunding.vo.InvestmentQuesionVO;
import com.treefunding.vo.InvestmentStoryVO;
import com.treefunding.vo.InvestmentVO;
import com.treefunding.vo.MemberVO;
import com.treefunding.vo.RewardItemVO;
import com.treefunding.vo.RewardMainImageVO;
import com.treefunding.vo.RewardQuesionVO;
import com.treefunding.vo.RewardStoryVO;
import com.treefunding.vo.RewardVO;

@Controller
@RequestMapping(value = "/studio")
public class StudioController {

	@Autowired
	private StudioService studioService;

	@Autowired
	private MemberService memberService;

	@RequestMapping(value = "/fms")
	public ModelAndView makerStudio(ModelAndView mav,HttpServletRequest request,
			HttpSession session,HttpServletResponse response) throws Exception{
		response.setContentType("text/html;charset=UTF-8");
		session=request.getSession();
		PrintWriter out=response.getWriter();
		String id=(String)session.getAttribute("id");
		MemberVO memberVO=memberService.idCheck(id);
		if(memberVO.getBusinessType().equals("개인회원")) {
			out.println("<script>");
			out.println("alert('개인회원은 FUNDING MAKER STUDIO를 이용하지 못합니다. 프로필수정에서 사업자로 변경하고 이용해주세요.');");
			out.println("history.back();");
			out.println("</script>");
		}else {
			mav.setViewName("studio/fms");
			return mav;
		}

		return null;
	}

	@RequestMapping(value = "/start_project")
	public ModelAndView startProject(ModelAndView mav) {
		mav.setViewName("studio/start_project");
		return mav;
	}

	@RequestMapping(value = "/investment_project_join")
	public ModelAndView investmentProjectJoin(ModelAndView mav,HttpServletRequest request,
			HttpSession session) {
		String id=(String)session.getAttribute("id");
		MemberVO memberVO=memberService.idCheck(id);
		mav.addObject("memberVO",memberVO);
		mav.setViewName("studio/investment_project_join");
		return mav;
	}

	@RequestMapping(value = "/investment_project_join_ok")
	public ModelAndView investmentProjectJoinOk(ModelAndView mav,HttpServletRequest request,
			HttpSession session, InvestmentVO investmentVO){
		session=request.getSession();
		String id=(String)session.getAttribute("id");
		investmentVO.setId(id);
		studioService.investmentInsert(investmentVO);
		mav.setViewName("studio/investment_project_goods");
		return mav;
	}

	@RequestMapping(value = "/investment_project_goods_ok")
	public ModelAndView investmentProjectGoodsOk(ModelAndView mav,HttpServletRequest request,
			HttpServletResponse response,HttpSession session,InvestmentItemVO investmentItemVO){
		session=request.getSession();
		String id=(String)session.getAttribute("id");
		int no=studioService.getTotalNo2();
		investmentItemVO.setId(id);
		investmentItemVO.setInvestmentTotalProjectNo(no);
		studioService.investmentItemInsert(investmentItemVO);
		mav.addObject("totalNo",no);
		mav.setViewName("studio/investment_main_image_join");
		return mav;
	}

	@RequestMapping(value = "/investment_main_image_join_ok")
	public ModelAndView investmentMainImageJoinOk(ModelAndView mav,HttpServletRequest request,
			HttpSession session,InvestmentMainImageVO investmentMainImageVO) throws Exception{
		session=request.getSession();
		String id=(String)session.getAttribute("id");
		System.out.println(id);
		investmentMainImageVO.setId(id);
		int no=studioService.getTotalNo2();

		investmentMainImageVO.setInvestmentTotalProjectNo(no);

		String saveFolder=request.getRealPath("resources/upload");
		/* C:\TreeWork\.metadata\.plugins\org.eclipse.wst.server.core
		\tmp0\wtpwebapps\treeproject\resources/ upload */
		int fileSize=5*1024*1024;
		MultipartRequest multi=null;
		multi=new MultipartRequest(request,saveFolder,fileSize,"UTF-8");
		File Tfile=multi.getFile("mainImageFile");

		if(Tfile != null) {
			String fileName=Tfile.getName();

			String homedir=saveFolder+"/";
			//오늘 날짜 폴더경로 저장
			File path1=new File(homedir);
			if(!(path1.exists())) {
				path1.mkdir();//오늘 날짜 폴더 생성
			}//if
			Random r=new Random();

			int random=r.nextInt(100000000);

			int index=fileName.lastIndexOf(".");
			String fileExtendsion=fileName.substring(index+1);
			String refilename="트리펀딩"+random+"."+fileExtendsion;
			String fileDBName="/"+refilename;
			Tfile.renameTo(new File(homedir+"/"+refilename));
			investmentMainImageVO.setMainImageFile(fileDBName);
			investmentMainImageVO.setMainImageFile(refilename);
		}else {
			investmentMainImageVO.setMainImageFile("");
		}
		studioService.investmentImageInsert(investmentMainImageVO);
		mav.setViewName("studio/investment_story_join");
		return mav;
	}

	@RequestMapping(value = "/investment_story_join_ok")
	public ModelAndView investmentStoryJoinOk(ModelAndView mav,InvestmentStoryVO investmentStoryVO,HttpServletRequest request,
			HttpSession session) {
		session=request.getSession();
		String id=(String)session.getAttribute("id");
		int no=studioService.getTotalNo2();
		investmentStoryVO.setId(id);
		investmentStoryVO.setInvestmentTotalProjectNo(no);
		studioService.investmentStoryInsert(investmentStoryVO);
		mav.addObject("totalNo",no);
		mav.setViewName("studio/investment_project_que");
		return mav;
	}

	@RequestMapping(value = "/investment_project_que_ok")
	public String investmentProjectQueOk(ModelAndView mav,InvestmentQuesionVO investmentQuesionVO,HttpServletRequest request,
			HttpSession session,HttpServletResponse response) throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		session=request.getSession();
		PrintWriter out=response.getWriter();
		String id=(String)session.getAttribute("id");
		int no=studioService.getTotalNo2();
		investmentQuesionVO.setInvestmentTotalProjectNo(no);
		investmentQuesionVO.setId(id);
		studioService.investmentQuesionInsert(investmentQuesionVO);
		studioService.investmentProjectNo(no);
		out.println("<script>");
		out.println("alert('프로젝트 승인 심사과 완료되면 메시지로 결과를 알려드립니다. 심사가 승인되기 전까지는 스튜디오 이용이 불가합니다!');");
		out.println("location='fms';");
		out.println("</script>");
		return null;
	}

	@RequestMapping(value = "/reward_project_join")
	public ModelAndView rewardProjectJoin(ModelAndView mav,HttpServletRequest request,
			HttpSession session) {
		String id=(String)session.getAttribute("id");
		MemberVO memberVO=memberService.idCheck(id);
		mav.addObject("memberVO",memberVO);
		mav.setViewName("studio/reward_project_join");
		return mav;
	}

	@RequestMapping(value = "/reward_project_join_ok")
	public ModelAndView rewardProjectJoinOk(ModelAndView mav,HttpServletRequest request,
			HttpSession session, RewardVO rewardVO){
		session=request.getSession();
		String id=(String)session.getAttribute("id");
		rewardVO.setId(id);
		studioService.rewardInsert(rewardVO);
		mav.setViewName("studio/reward_project_goods");
		return mav;
	}

	@RequestMapping(value = "/reward_project_goods_ok")
	public ModelAndView rewardProjectGoodsOk(ModelAndView mav,HttpServletRequest request,
			HttpServletResponse response,HttpSession session,RewardItemVO rewardItemVO){
		session=request.getSession();
		String id=(String)session.getAttribute("id");
		int no=studioService.getTotalNo();
		rewardItemVO.setId(id);
		rewardItemVO.setRewardTotalProjectNo(no);
		studioService.rewardItemInsert(rewardItemVO);
		session.setAttribute("con", "Reward");
		mav.addObject("totalNo",no);
		mav.setViewName("studio/reward_main_image_join");
		return mav;
	}

	@RequestMapping(value = "/reward_main_image_join_ok")
	public ModelAndView rewardMainImageJoinOk(ModelAndView mav,HttpServletRequest request,
			HttpSession session,RewardMainImageVO rewardmainImageVO) throws Exception{
		session=request.getSession();
		String id=(String)session.getAttribute("id");
		rewardmainImageVO.setId(id);
		int no=studioService.getTotalNo();

		rewardmainImageVO.setRewardTotalProjectNo(no);

		String saveFolder=request.getRealPath("resources/upload");
		/* C:\TreeWork\.metadata\.plugins\org.eclipse.wst.server.core
		\tmp0\wtpwebapps\treeproject\resources/ upload */
		int fileSize=5*1024*1024;
		MultipartRequest multi=null;
		multi=new MultipartRequest(request,saveFolder,fileSize,"UTF-8");
		File Tfile=multi.getFile("mainImageFile");

		if(Tfile != null) {
			String fileName=Tfile.getName();

			String homedir=saveFolder+"/";
			//오늘 날짜 폴더경로 저장
			File path1=new File(homedir);
			if(!(path1.exists())) {
				path1.mkdir();//오늘 날짜 폴더 생성
			}//if
			Random r=new Random();

			int random=r.nextInt(100000000);

			int index=fileName.lastIndexOf(".");
			String fileExtendsion=fileName.substring(index+1);
			String refilename="트리펀딩"+random+"."+fileExtendsion;
			String fileDBName="/"+refilename;
			Tfile.renameTo(new File(homedir+"/"+refilename));
			rewardmainImageVO.setMainImageFile(fileDBName);
			rewardmainImageVO.setMainImageFile(refilename);
		}else {
			rewardmainImageVO.setMainImageFile("");
		}
		studioService.rewardImageInsert(rewardmainImageVO);
		mav.setViewName("studio/reward_story_join");
		return mav;
	}

	@RequestMapping(value = "/reward_story_join_ok")
	public ModelAndView rewardStoryJoinOk(ModelAndView mav,RewardStoryVO rewardStoryVO,HttpServletRequest request,
			HttpSession session) {
		session=request.getSession();
		String id=(String)session.getAttribute("id");
		int no=studioService.getTotalNo();
		rewardStoryVO.setId(id);
		rewardStoryVO.setRewardTotalProjectNo(no);
		studioService.rewardStoryInsert(rewardStoryVO);
		mav.addObject("totalNo",no);
		mav.setViewName("studio/reward_project_que");
		return mav;
	}

	@RequestMapping(value = "/reward_project_que_ok")
	public String rewardProjectQueOk(ModelAndView mav,RewardQuesionVO rewardQuesionVO,HttpServletRequest request,
			HttpSession session,HttpServletResponse response) throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		session=request.getSession();
		PrintWriter out=response.getWriter();
		String id=(String)session.getAttribute("id");
		int no=studioService.getTotalNo();
		rewardQuesionVO.setRewardTotalProjectNo(no);
		rewardQuesionVO.setId(id);
		studioService.rewardQuesionInsert(rewardQuesionVO);
		studioService.rewardProjectNo(no);
		out.println("<script>");
		out.println("alert('프로젝트 승인 심사과 완료되면 메시지로 결과를 알려드립니다. 심사가 승인되기 전까지는 스튜디오 이용이 불가합니다!');");
		out.println("location='fms';");
		out.println("</script>");
		return null;
	}


	@RequestMapping(value = "/project_edit")
	public ModelAndView projectEdit(ModelAndView mav) {
		mav.setViewName("studio/project_edit");
		return mav;
	}

	@RequestMapping(value = "/project_del")
	public ModelAndView projectDel(ModelAndView mav) {
		mav.setViewName("studio/project_del");
		return mav;
	}

	@RequestMapping(value = "/reward_project_goods_manager")
	public ModelAndView rewardProjectGoodsManger(ModelAndView mav) {
		mav.setViewName("studio/reward_project_goods_manager");
		return mav;
	}


	@RequestMapping(value = "/studio_main")/*메인으로 감*/
	public ModelAndView studioMain(ModelAndView mav,HttpServletRequest request,
			HttpSession session) {
		session=request.getSession();
		String id=(String)session.getAttribute("id");
		mav.setViewName("studio/studio_main");
		return mav;
	}

	@RequestMapping(value = "/reward_project_payment") /*결제 현황*/
	public ModelAndView rewardProjectPayment(ModelAndView mav) {
		mav.setViewName("studio/reward_project_payment");
		return mav;
	}

	//세션체크 메소드
}