package com.treefunding.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.treefunding.vo.AdminAccountVO;
import com.treefunding.vo.CreditVO;
import com.treefunding.vo.EmailVO;
import com.treefunding.vo.MemberInvestmentFundingVO;
import com.treefunding.vo.MemberRewardFundingVO;
import com.treefunding.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	private SqlSession sqlSession;

	/**
	 * 아이디 중복체크
	 * @param id
	 * @return MemberVO
	 */
	
	public MemberVO idCheck(String id) {
		return sqlSession.selectOne("Member.idCheck", id);
	}

	/**
	 * 회원정보 저장
	 * @param memberVO
	 * @return boolean
	 */
	
	public boolean insert(MemberVO memberVO) {
		return sqlSession.insert("Member.insert", memberVO) > 0;
	}

	/** 이메일 인증
	 * 
	 * @param email
	 * @return boolean
	 */

	public EmailVO emailCodeSelect(EmailVO emailVO) {
		return sqlSession.selectOne("Member.emailCodeSelect",emailVO);	
	}

	public EmailVO emailCodeCheck(EmailVO emailVO) {
		return sqlSession.selectOne("Member.emailCodeCheck",emailVO);	
	}
	
	public boolean emailCodeInsert(EmailVO emailVO) {
		return sqlSession.insert("Member.emailCodeInsert",emailVO) > 0;
	}

	public boolean emailCodeUpdate(EmailVO emailVO) {
		return sqlSession.update("Member.emailCodeUpdate",emailVO) > 0;
	}

	/** 로그인 체크
	 * 
	 * @param memberVO
	 * @return
	 */
	public MemberVO loginCheck(MemberVO memberVO) {
		return sqlSession.selectOne("Member.loginSelect",memberVO);
	}
	
	/**	마지막 로그인 날짜 업데이트
	 * 
	 * @param memberVO
	 * @return
	 */
	public boolean loginDateUpdate(MemberVO memberVO) {
		return sqlSession.update("Member.loginDateUpdate",memberVO) > 0;
	}
	
	/**	모든 계정 검색
	 * 
	 * @return
	 */
	public List<MemberVO> memberList(MemberVO memberVO){
		return sqlSession.selectList("Member.memberList",memberVO);
	}
	
	/**	active_status 활성, block_date null로 업데이트
	 * 
	 * @param memberVO
	 * @return
	 */
	public boolean blockDateUpdate(MemberVO memberVO) {
		return sqlSession.update("Member.blockDateUpdate", memberVO) > 0;
	}

	/**	회원정보 수정
	 * 
	 */
	public boolean updateProfile(MemberVO memberVO) {
		return sqlSession.update("Member.updateProfile", memberVO) > 0;
	}
	
	public boolean withdraw(String id) {
		return sqlSession.update("Member.withdraw", id) > 0;
	}

	@Override
	public MemberVO getJoin(String id) {
		return sqlSession.selectOne("Member.gj",id);
	}

	@Override
	public int getListCount() {
		return sqlSession.selectOne("Member.getListCount");
	}

	@Override
	public MemberVO getFindId(MemberVO memberVO) {
		return sqlSession.selectOne("Member.getFindId", memberVO);
	}

	@Override
	public MemberVO getFindPassword(MemberVO memberVO) {
		return sqlSession.selectOne("Member.getFindPassword", memberVO);
	}
	
	@Override
	public int updatePassword(MemberVO memberVO) {
		return sqlSession.update("Member.updatePassword", memberVO);
	}

	@Override
	public AdminAccountVO getAdminAccount(String id) {
		return sqlSession.selectOne("Member.getAdminAccount", id);
	}

	@Override
	public boolean updateAdminPassword(AdminAccountVO adminVO) {
		return sqlSession.update("Member.updateAdminPassword", adminVO) > 0;
	}
	
	@Override
	public void updateCredit(MemberInvestmentFundingVO memberInvestmentFundingVO) {
		sqlSession.update("Member.updateCredit",memberInvestmentFundingVO);
	}

	@Override
	public void updateCredit(MemberRewardFundingVO memberRewardFundingVO) {
		sqlSession.update("Member.updateCredit",memberRewardFundingVO);
	}

	@Override
	public void creditWithdraw(CreditVO creditVO) {
		sqlSession.update("Member.creditWithdraw",creditVO);
	}

	@Override
	public void creditCharge(CreditVO creditVO) {
		sqlSession.update("Member.creditCharge",creditVO);
	}
}