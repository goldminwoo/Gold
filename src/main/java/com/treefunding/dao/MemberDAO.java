package com.treefunding.dao;

import java.util.List;

import com.treefunding.vo.AdminAccountVO;
import com.treefunding.vo.CreditVO;
import com.treefunding.vo.EmailVO;
import com.treefunding.vo.MemberInvestmentFundingVO;
import com.treefunding.vo.MemberRewardFundingVO;
import com.treefunding.vo.MemberVO;

public interface MemberDAO {

	MemberVO idCheck(String id);
	boolean insert(MemberVO memberVO);
	EmailVO emailCodeSelect(EmailVO emailVO);
	EmailVO emailCodeCheck(EmailVO emailVO);
	boolean emailCodeInsert(EmailVO emailVO);
	boolean emailCodeUpdate(EmailVO emailVO);
	MemberVO loginCheck(MemberVO memberVO);
	boolean loginDateUpdate(MemberVO memberVO);
	List<MemberVO> memberList(MemberVO memberVO);
	boolean blockDateUpdate(MemberVO memberVO);
	boolean updateProfile(MemberVO memberVO);
	boolean withdraw(String id);
	MemberVO getJoin(String id);
	int getListCount();
	MemberVO getFindId(MemberVO memberVO);
	MemberVO getFindPassword(MemberVO memberVO);
	int updatePassword(MemberVO memberVO);
	AdminAccountVO getAdminAccount(String id);
	boolean updateAdminPassword(AdminAccountVO adminVO);
	void updateCredit(MemberInvestmentFundingVO memberInvestmentFundingVO);
	void updateCredit(MemberRewardFundingVO memberRewardFundingVO);
	void creditWithdraw(CreditVO creditVO);
	void creditCharge(CreditVO creditVO);
}
