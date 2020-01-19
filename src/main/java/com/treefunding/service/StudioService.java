package com.treefunding.service;

import java.util.List;

import com.treefunding.vo.InvestmentItemVO;
import com.treefunding.vo.InvestmentMainImageVO;
import com.treefunding.vo.InvestmentQuesionVO;
import com.treefunding.vo.InvestmentStoryVO;
import com.treefunding.vo.InvestmentVO;
import com.treefunding.vo.MemberInvestmentFundingVO;
import com.treefunding.vo.MemberRewardFundingVO;
import com.treefunding.vo.RewardItemVO;
import com.treefunding.vo.RewardMainImageVO;
import com.treefunding.vo.RewardQuesionVO;
import com.treefunding.vo.RewardStoryVO;
import com.treefunding.vo.RewardVO;

public interface StudioService {

	
	void investmentInsert(InvestmentVO investmentVO);//투자 프로젝트 등록 1페이지
	void investmentItemInsert(InvestmentItemVO investmentItemVO);//투자 프로젝트 등록 2페이지
	void investmentImageInsert(InvestmentMainImageVO investmentMainImageVO);//투자 프로젝트 등록 3페이지
	void investmentStoryInsert(InvestmentStoryVO investmentStoryVO);//투자 프로젝트 등록 4페이지
	void investmentQuesionInsert(InvestmentQuesionVO investmentQuesionVO);//투자 프로젝트 등록 5페이지
	
	void rewardInsert(RewardVO rewardVO);//리워드 프로젝트 등록 1페이지
	void rewardItemInsert(RewardItemVO rewardItemVO);//리워드 프로젝트 등록 2페이지
	void rewardImageInsert(RewardMainImageVO rewardMainImageVO);//리워드 프로젝트 등록 3페이지	
	void rewardStoryInsert(RewardStoryVO rewardStoryVO);//리워드 프로젝트 등록 4페이지
	void rewardQuesionInsert(RewardQuesionVO rewardQuesionVO);//리워드 프로젝트 등록 5페이지
	
	void investmentProjectNo(int no);//투자 개인 프로젝트 개수
	void rewardProjectNo(int no);//리워드 개인 프로젝트 개수

	int getTotalNo2();//투자 전체 프로젝트 개수 반환
	int getTotalNo();//리워드 전체 프로젝트 개수 반환
	
	List<RewardVO> idCountReward(String id);//id를 기준으로 만든 리워드 개수 조회
	List<InvestmentVO> idCountInvestment(String id);//id를 기준으로 만든 투자 개수 조회
	
	List<InvestmentVO> investmentAll();//투자 전체 조회(투자 메인페이지)
	List<String> investmentMainImage();//투자 메인이미지 조회 (투자 메인페이지)
	
	List<RewardVO> rewardAll();//리워드 전체 조회(투자 메인페이지)
	List<String> rewardMainImage();//리워드 메인이미지 조회 (투자 메인페이지)
	
	List<RewardVO> getRewardList(RewardVO rewardVO);
	List<InvestmentVO> getInvestmentList(InvestmentVO investmentVO);

	int getRewardListCount();
	int getInvestmentListCount();
	
	
	int updateRewardApproved(int totalProjectNo);
	
	int updateInvestmentApproved(int totalProjectNo);
	
	RewardVO getReward(int totalProjectNo);
	RewardItemVO getRewardItem(int totalProjectNo);
	RewardStoryVO getRewardStory(int no);
	
	InvestmentVO getInvestment(int no);
	InvestmentItemVO getInvestmentItem(int no);
	InvestmentStoryVO getInvestmentStory(int no);
	
	void insertMemberInvestmentFunding(MemberInvestmentFundingVO memberInvestmentFundingVO);
	//회원의 투자 펀딩 관리
	void insertMemberRewardFunding(MemberRewardFundingVO memberRewardFundingVO);
	//회원 리워드 펀딩 관리
	List<MemberInvestmentFundingVO> idCountInvestmentFunding(int no);//회원별 투자 펀딩 수
	List<MemberRewardFundingVO> idCountRewardFunding(int no);//회원별 리워드 펀딩 수
	
	void updateInvestmentSoldEa(MemberInvestmentFundingVO memberInvestmentFundingVO);//투자 팔린개수 증가
	void updateRewardSoldEa(MemberRewardFundingVO memberRewardFundingVO);//리워드 팔린개수 증가
	
	int investmentIdCount(String id);//id로 펀딩한 투자 개수 가져오기
	int rewardIdCount(String id);//id로 펀딩한 리워드 개수 가져오기
	
	String getInvestmentMainImage(int investmentTotalProjectNo);//투자 메인 이미지 가져오기
	String getRewardMainImage(int rewardTotalProjectNo);//리워드 메인 이미지 가져오기
	
	List<String> investmentProduct();//투자 상품 가져오기
	List<String> rewardProduct();//리워드 상품 가져오기
}
