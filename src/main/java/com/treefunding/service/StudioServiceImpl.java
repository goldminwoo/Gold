package com.treefunding.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.treefunding.dao.StudioDAO;
import com.treefunding.vo.InvestmentItemVO;
import com.treefunding.vo.InvestmentVO;
import com.treefunding.vo.MemberInvestmentFundingVO;
import com.treefunding.vo.MemberRewardFundingVO;
import com.treefunding.vo.InvestmentMainImageVO;
import com.treefunding.vo.InvestmentQuesionVO;
import com.treefunding.vo.RewardItemVO;
import com.treefunding.vo.RewardMainImageVO;
import com.treefunding.vo.RewardQuesionVO;
import com.treefunding.vo.RewardStoryVO;
import com.treefunding.vo.RewardVO;
import com.treefunding.vo.InvestmentStoryVO;

@Service
public class StudioServiceImpl implements StudioService{

	@Autowired
	private StudioDAO studioDAO; 
	
	@Override
	public void investmentInsert(InvestmentVO investmentVO) {
		this.studioDAO.investmentInsert(investmentVO);
	}
	
	@Override
	public void investmentItemInsert(InvestmentItemVO investmentItemVO) {
		this.studioDAO.investmentItemInsert(investmentItemVO);
	}
	
	@Override
	public void investmentImageInsert(InvestmentMainImageVO investmentMainImageVO) {
		this.studioDAO.investmentImageInsert(investmentMainImageVO);
	}
	
	@Override
	public void investmentStoryInsert(InvestmentStoryVO investmentStoryVO) {
		this.studioDAO.investmentStoryInsert(investmentStoryVO);
	}
	
	@Override
	public void investmentQuesionInsert(InvestmentQuesionVO investmentQuesionVO) {
		this.studioDAO.investmentQuesionInsert(investmentQuesionVO);
	}
	
	
	@Override
	public void rewardInsert(RewardVO rewardVO) {
		this.studioDAO.rewardInsert(rewardVO);
	}
	
	@Override
	public void rewardItemInsert(RewardItemVO rewardItemVO) {
		this.studioDAO.rewardItemInsert(rewardItemVO);
	}
	
	@Override
	public void rewardImageInsert(RewardMainImageVO rewardMainImageVO) {
		this.studioDAO.rewardImageInsert(rewardMainImageVO);
	}
	
	@Override
	public void rewardStoryInsert(RewardStoryVO rewardStoryVO) {
		this.studioDAO.rewardStoryInsert(rewardStoryVO);
	}
	
	@Override
	public void rewardQuesionInsert(RewardQuesionVO rewardQuesionVO) {
		this.studioDAO.rewardQuesionInsert(rewardQuesionVO);
	}

	@Override
	public int getTotalNo2() {
		return this.studioDAO.getTotalNo2();
	}

	@Override
	public int getTotalNo() {
		return this.studioDAO.getTotalNo();
	}
	
	@Override
	public void investmentProjectNo(int no) {
		this.studioDAO.investmentProjectNo(no);
	}

	@Override
	public void rewardProjectNo(int no) {
		this.studioDAO.rewardProjectNo(no);
	}
	
	@Override
	public List<RewardVO> idCountReward(String id) {
		return this.studioDAO.idCountReward(id);
	}
	
	@Override
	public List<InvestmentVO> idCountInvestment(String id) {
		return this.studioDAO.idCountInvestment(id);
	}

	@Override
	public List<InvestmentVO> investmentAll() {
		return this.studioDAO.investmentAll();
	}

	@Transactional
	@Override
	public List<String> investmentMainImage() {
		return this.studioDAO.investmentMainImage();
	}
	
	@Override
	public List<RewardVO> rewardAll() {
		return this.studioDAO.rewardAll();
	}

	@Transactional
	@Override
	public List<String> rewardMainImage() {
		return this.studioDAO.rewardMainImage();
	}

	@Transactional
	@Override
	public List<RewardVO> getRewardList(RewardVO rewardVO){
		return studioDAO.getRewardList(rewardVO);
	}

	@Transactional
	@Override
	public int getRewardListCount() {
		return studioDAO.getRewardListCount();
	}
	
	@Transactional
	@Override
	public int updateRewardApproved(int totalProjectNo) {
		return studioDAO.updateRewardApproved(totalProjectNo);
	}
	
	@Transactional
	@Override
	public int updateInvestmentApproved(int totalProjectNo) {
		return studioDAO.updateInvestmentApproved(totalProjectNo);
	}
	
	@Transactional
	@Override
	public RewardVO getReward(int totalProjectNo) {
		return studioDAO.getReward(totalProjectNo);
	}
	
	@Transactional
	@Override
	public RewardItemVO getRewardItem(int totalProjectNo) {
		return studioDAO.getRewardItem(totalProjectNo);
	}
	
	@Override
	public RewardStoryVO getRewardStory(int no) {
		return studioDAO.getRewardStory(no);
	}
	
	@Transactional
	@Override
	public int getInvestmentListCount() {
		return studioDAO.getInvestmentListCount();
	}

	@Transactional
	@Override
	public List<InvestmentVO> getInvestmentList(InvestmentVO investmentVO) {
		return studioDAO.getInvestmentList(investmentVO);
	}
	
	@Transactional
	@Override
	public InvestmentVO getInvestment(int no) {
		return studioDAO.getInvestment(no);
	}

	@Transactional
	@Override
	public InvestmentItemVO getInvestmentItem(int no) {
		return studioDAO.getInvestmentItem(no);
	}

	@Override
	public InvestmentStoryVO getInvestmentStory(int no) {
		return studioDAO.getInvestmentStory(no);
	}

	@Override
	public void insertMemberInvestmentFunding(MemberInvestmentFundingVO memberInvestmentFundingVO) {
		studioDAO.insertMemberInvestmentFunding(memberInvestmentFundingVO);
	}

	@Override
	public void insertMemberRewardFunding(MemberRewardFundingVO memberRewardFundingVO) {
		studioDAO.insertMemberRewardFunding(memberRewardFundingVO);
	}
	
	@Override
	public List<MemberInvestmentFundingVO> idCountInvestmentFunding(int no) {
		return studioDAO.idCountInvestmentFunding(no);
	}

	@Override
	public List<MemberRewardFundingVO> idCountRewardFunding(int no) {
		return studioDAO.idCountRewardFunding(no);
	}

	@Override
	public void updateRewardSoldEa(MemberRewardFundingVO memberRewardFundingVO) {
		studioDAO.updateRewardSoldEa(memberRewardFundingVO);
	}
	
	@Override
	public void updateInvestmentSoldEa(MemberInvestmentFundingVO memberInvestmentFundingVO) {
		studioDAO.updateInvestmentSoldEa(memberInvestmentFundingVO);
	}

	@Override
	public int investmentIdCount(String id) {
		return studioDAO.investmentIdCount(id);
	}

	@Override
	public int rewardIdCount(String id) {
		return studioDAO.rewardIdCount(id);
	}

	@Override
	public String getInvestmentMainImage(int investmentTotalProjectNo) {
		return studioDAO.getInvestmentMainImage(investmentTotalProjectNo);
	}

	@Override
	public String getRewardMainImage(int rewardTotalProjectNo) {
		return studioDAO.getRewardMainImage(rewardTotalProjectNo);
	}

	@Transactional
	@Override
	public List<String> investmentProduct() {
		return studioDAO.investmentProduct();
	}

	@Transactional
	@Override
	public List<String> rewardProduct() {
		return studioDAO.rewardProduct(); 
	}

}
