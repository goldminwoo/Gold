package com.treefunding.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;
import java.util.UUID;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.treefunding.service.MemberService;
import com.treefunding.vo.AdminAccountVO;
import com.treefunding.vo.EmailVO;
import com.treefunding.vo.MemberVO;

@Controller
@RequestMapping(value = "/member")
public class MemberController {

	@Autowired
	private MemberService memberService;   //서비스를 호출하기 위해서 의존성을 주입

	@Autowired
	private JavaMailSender mailSender;     //메일 서비스를 사용하기 위해 의존성을 주입함.

	/** 로거
	 * 
	 */
	private static final Logger logger=
			LoggerFactory.getLogger(MemberController.class);
	private static final String String = null;

	/** 로그인 페이지
	 * 
	 * @param mav
	 * @return
	 */
	@RequestMapping(value = "/login")
	public ModelAndView login(ModelAndView mav) {
		mav.setViewName("member/login");
		return mav;
	}

	/** 회원가입 창
	 * 
	 * @param mav
	 * @return
	 */
	@RequestMapping(value = "/join")
	public ModelAndView join(ModelAndView mav) {
		mav.setViewName("member/join");
		return mav;
	}

	/** 회원가입 완료 
	 * 
	 * @param mav
	 * @param memberVO
	 * @return
	 */
	@RequestMapping(value = "/joinOk")
	public ModelAndView joinOk(ModelAndView mav, MemberVO memberVO){
		memberService.insert(memberVO);
		mav.setViewName("redirect:/");

		return mav;
	}

	/**아이디 중복체크
	 * 
	 * @param id
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/idCheck")
	@ResponseBody
	public boolean idCheck(String id) throws Exception{
		MemberVO memberVO = memberService.idCheck(id);
		return ObjectUtils.isEmpty(memberVO) == false;
	}

	/**   이메일 발송
	 * 
	 * @param response
	 * @param email
	 * @return
	 * @throws IOException
	 */
	@RequestMapping(value = "/sendEmail", method=RequestMethod.POST)
	public String sendEmail(HttpServletResponse response, String email1,
			String email2) throws IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();      

		String emailAddress = email1+"@"+email2;

		String code = UUID.randomUUID().toString().toUpperCase();
		String setfrom = "javaP2019@gamil.com";
		String title = "트리펀딩 회원가입 인증 이메일 입니다.";
		String content =

				System.getProperty("line.separator")+ //한줄씩 줄간격을 두기위해 작성

				System.getProperty("line.separator")+

				"트리펀딩 인증 메일입니다."

        +System.getProperty("line.separator")+

        System.getProperty("line.separator")+

        " 인증번호는 " +code+ " 입니다. ";




		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message,
					true, "UTF-8");

			messageHelper.setFrom(setfrom); // 보내는사람 생략하면 정상작동을 안함
			messageHelper.setTo(emailAddress); // 받는사람 이메일
			messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
			messageHelper.setText(content); // 메일 내용

			mailSender.send(message);

			EmailVO emailVO = new EmailVO();
			emailVO.setEmail1(email1);
			emailVO.setEmail2(email2);
			emailVO.setEmailCode(code);

			if(ObjectUtils.isEmpty(memberService.emailCodeSelect(emailVO))) { //이메일이 테이블에 없을 경우

				memberService.emailCodeInsert(emailVO);
			}else {                                             //이메일이 테이블에 있을 경우

				memberService.emailCodeUpdate(emailVO);
			}
		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
		}

		out.flush();
		return null;
	}

	/**   이메일 코드 확인
	 * 
	 * @param email
	 * @param emailCode
	 * @return
	 */
	@RequestMapping(value = "/emailCodeCheck")
	@ResponseBody
	public boolean emailCodeCheck(String email1, String email2, String emailCode) {
		EmailVO emailVO = new EmailVO();
		emailVO.setEmail1(email1);
		emailVO.setEmail2(email2);
		emailVO.setEmailCode(emailCode);

		EmailVO checkEmailVO = memberService.emailCodeSelect(emailVO);

		if(ObjectUtils.isEmpty(checkEmailVO)) { //이메일 인증을 안했을 경우

			return false;

		}else{    //이메일 인증을 했을 경우

			return true;

		}

	}

	/**   로그인
	 * 
	 * @param session
	 * @param request
	 * @param response
	 * @param memberVO
	 * @param mav
	 * @return
	 */

	@RequestMapping(value = "/loginCheck")
	public ModelAndView loginCheck(HttpSession session,
			HttpServletRequest request, HttpServletResponse response,
			MemberVO memberVO,ModelAndView mav) {

		session=request.getSession();
		if(memberVO.getId().equals("admin")) {

			AdminAccountVO adminVO = memberService.getAdminAccount("admin");

			if(memberVO.getPassword().equals(adminVO.getPassword())) {
				session.setAttribute("id", "admin");
				mav.setViewName("manager/manager_index");
			}else {
				mav.addObject("message", "아이디와 비밀번호를 확인해주세요.");
				mav.setViewName("member/login");
			}			
		}else {

			MemberVO result = memberService.loginCheck(memberVO);

			if(ObjectUtils.isEmpty(result)) {//로그인 실패
				mav.addObject("message", "아이디와 비밀번호를 확인해주세요.");
				mav.setViewName("member/login");
			}else if(result.getActiveStatus().equals("탈퇴")) {//탈퇴된 계정
				mav.addObject("message", "탈퇴된 계정입니다.");
				mav.setViewName("member/login");
			}else if(result.getActiveStatus().equals("정지")){      //정지된 계정
				java.util.Date utilDate = new java.util.Date();
				java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());

				if(sqlDate.compareTo(result.getBlockDate()) < 0) {   //정지 기간이 남았을 경우
					mav.addObject("message", "관리자에 의해 정지된 계정입니다.");
					mav.setViewName("member/login");
				}else {
					memberService.blockDateUpdate(memberVO);
					memberService.loginDateUpdate(memberVO);
					session.setAttribute("id", result.getId());
					mav.setViewName("redirect:/");
				}	
			}else {
				memberService.loginDateUpdate(memberVO);
				session.setAttribute("id", result.getId());
				mav.setViewName("redirect:/");
			}		
		}	//관리자 if else

		return mav;
	}
	/** 로그아웃
	 * 
	 * @param session
	 * @param mav
	 * @return
	 */
	@RequestMapping(value = "/logout")
	public String logout(HttpSession session,
			HttpServletResponse response) throws Exception{
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		session.invalidate();//로그아웃 처리
		out.println("<script>");
		out.println("alert('로그아웃 되었습니다!');");
		out.println("location='/treeproject';");
		out.println("</script>");
		return null;
	}

	@RequestMapping(value = "/findId")
	public ModelAndView find_id(ModelAndView mav) {
		mav.setViewName("member/find_id");
		return mav;
	}

	@RequestMapping(value = "/findIdOk", produces = "application/text;charset=utf8")
	@ResponseBody
	public String findIdOk(String name, String email) {

		//이메일 주소에 @가 없을 경우
		if(!(email.contains("@"))) {
			return "정확한 이메일 주소를 입력하세요";
		}

		//이메일 주소 @ 기준으로 email1, email2로 나눔
		String[] array = email.split("@");	
		String email1 = array[0];
		String email2 = array[1];

		//이름과 email1, email2로 아이디 검색
		MemberVO memberVO = new MemberVO();
		memberVO.setName(name);
		memberVO.setEmail1(email1);
		memberVO.setEmail2(email2);
		MemberVO resultVO = memberService.getFindId(memberVO);

		if(ObjectUtils.isEmpty(resultVO)) {
			return "이름과 이메일을 확인해주세요!";
		}else {
			return "회원님의 아이디는 "+resultVO.getId()+" 입니다.";
		}
	}

	@RequestMapping(value = "/findPassword")
	public ModelAndView find_password(ModelAndView mav) {
		mav.setViewName("member/find_password");
		return mav;
	}

	@RequestMapping(value = "/findPasswordOk", produces = "application/text;charset=utf8")
	@ResponseBody
	public String findPasswordOk (String id, String email) {

		//이메일 주소에 @가 없을 경우
		if(!(email.contains("@"))) {
			return "정확한 이메일 주소를 입력하세요";
		}

		//이메일 주소 @ 기준으로 email1, email2로 나눔
		String[] array = email.split("@");	
		String email1 = array[0];
		String email2 = array[1];

		//이름과 email1, email2로 아이디 검색
		MemberVO memberVO = new MemberVO();
		memberVO.setId(id);
		memberVO.setEmail1(email1);
		memberVO.setEmail2(email2);
		MemberVO resultVO = memberService.getFindPassword(memberVO);

		if(ObjectUtils.isEmpty(resultVO)) {
			return "아이디와 이메일을 확인해주세요!";
		}

		Random random = new Random();
		String	code = random.nextInt()+"";

		String setfrom = "javaP2019@gamil.com";
		String title = "트리펀딩 임시비밀번호 이메일입니다.";
		String content =

				System.getProperty("line.separator")+ //한줄씩 줄간격을 두기위해 작성

				System.getProperty("line.separator")+

				"트리펀딩 임시비밀번호 발송해드립니다."

		        +System.getProperty("line.separator")+

		        System.getProperty("line.separator")+

		        " 임시비밀번호는 " +code+ " 입니다. ";




		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message,
					true, "UTF-8");

			messageHelper.setFrom(setfrom); // 보내는사람 생략하면 정상작동을 안함
			messageHelper.setTo(email); // 받는사람 이메일
			messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
			messageHelper.setText(content); // 메일 내용

			mailSender.send(message);
			memberVO.setPassword(code);
			memberService.updatePassword(memberVO);
			return "임시비밀번호 발송 완료";
		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
			return "에러 발생";
		}				
	}


}