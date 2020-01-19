package com.treefunding.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.treefunding.dao.MemberDAO;
import com.treefunding.vo.AdminAccountVO;
import com.treefunding.vo.CreditVO;
import com.treefunding.vo.EmailVO;
import com.treefunding.vo.MemberInvestmentFundingVO;
import com.treefunding.vo.MemberRewardFundingVO;
import com.treefunding.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO memberDAO;

	/** 아이디 중복체크
	 * @param id
	 * @return
	 */
	@Transactional
	@Override
	public MemberVO idCheck(String id) {

		return memberDAO.idCheck(id);
	}

	/** 회원가입
	 * @param memberVO
	 * @return
	 */
	@Transactional
	@Override
	public boolean insert(MemberVO memberVO) {

		return memberDAO.insert(memberVO);
	}

	/** 이메일 코드 확인
	 * @param email
	 * @return
	 */
	@Transactional
	@Override
	public EmailVO emailCodeSelect(EmailVO emailVO) {
		return memberDAO.emailCodeSelect(emailVO);
	}

	@Transactional
	@Override
	public boolean emailCodeInsert(EmailVO emailVO) {
		return memberDAO.emailCodeInsert(emailVO);
	}

	@Transactional
	@Override
	public boolean emailCodeUpdate(EmailVO emailVO) {
		return memberDAO.emailCodeUpdate(emailVO);
	}


	/** 로그인
	 * 
	 */
	@Transactional
	@Override
	public MemberVO loginCheck(MemberVO memberVO) {
		return memberDAO.loginCheck(memberVO);
	}

	/** 로그아웃
	 * 
	 * @param session
	 */

	@Override
	public void logout(HttpSession session) {
		session.invalidate();
	}

	@Transactional
	@Override
	public List<MemberVO> memberList(MemberVO memberVO){
		return memberDAO.memberList(memberVO);
	}

	/** 계정 정지기간 null로 업데이트
	 * 
	 * @param memberVO
	 * @return
	 */
	@Transactional
	@Override
	public void blockDateUpdate(MemberVO memberVO) {
		memberDAO.blockDateUpdate(memberVO);
	}

	@Transactional
	@Override
	public void loginDateUpdate(MemberVO memberVO) {
		memberDAO.loginDateUpdate(memberVO);
	}

	/**	회원정보 수정
	 * 
	 */
	@Transactional
	@Override
	public boolean updateProfile(MemberVO memberVO) {
		memberDAO.updateProfile(memberVO);
		return false;
	}
	
	/** 회원 탈퇴
	 * 
	 */
	@Transactional
	@Override
	public boolean withdraw(String id) {
		return memberDAO.withdraw(id);
	}

	@Transactional
	@Override
	public MemberVO getJoin(String id) {
		return memberDAO.getJoin(id);
	}
	
	@Transactional
	@Override
	public int getListCount() {
		return memberDAO.getListCount();
	}

	@Override
	public MemberVO getFindId(MemberVO memberVO) {
		return memberDAO.getFindId(memberVO);
	}

	@Override
	public MemberVO getFindPassword(MemberVO memberVO) {
		return memberDAO.getFindPassword(memberVO);
	}
	
	@Override
	public int updatePassword(MemberVO memberVO) {
		return memberDAO.updatePassword(memberVO);
	}

	@Override
	public AdminAccountVO getAdminAccount(String id) {
		return memberDAO.getAdminAccount(id);
	}

	@Override
	public boolean updateAdminPassword(AdminAccountVO adminVO) {
		return memberDAO.updateAdminPassword(adminVO);
	}
	
	@Override
	public void updateCredit(MemberInvestmentFundingVO memberInvestmentFundingVO) {
		memberDAO.updateCredit(memberInvestmentFundingVO);
	}

	@Override
	public void updateCredit(MemberRewardFundingVO memberRewardFundingVO) {
		memberDAO.updateCredit(memberRewardFundingVO);
	}

	@Override
	public void creditWithdraw(CreditVO creditVO) {
		memberDAO.creditWithdraw(creditVO);
	}

	@Override
	public void creditCharge(CreditVO creditVO) {
		memberDAO.creditCharge(creditVO);
	}
}