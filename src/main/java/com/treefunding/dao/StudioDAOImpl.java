package com.treefunding.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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

@Repository
public class StudioDAOImpl implements StudioDAO{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void investmentInsert(InvestmentVO investmentVO) {
		this.sqlSession.insert("Investment.insertInvestment",investmentVO);
	}
	
	@Override
	public void investmentItemInsert(InvestmentItemVO investmentItemVO) {
		this.sqlSession.insert("Investment.insertInvestmentItem",investmentItemVO);
	}
	
	@Override
	public void investmentImageInsert(InvestmentMainImageVO investmentMainImageVO) {
		this.sqlSession.insert("Investment.insertInvestmentMainImage",investmentMainImageVO);
	}
	
	@Override
	public void investmentStoryInsert(InvestmentStoryVO investmentStoryVO) {
		this.sqlSession.insert("Investment.insertInvestmentStory",investmentStoryVO);
	}
	
	@Override
	public void investmentQuesionInsert(InvestmentQuesionVO investmentQuesionVO) {
		this.sqlSession.insert("Investment.insertInvestmentQuesion",investmentQuesionVO);
	}
	
	
	@Override
	public void rewardInsert(RewardVO rewardVO) {
		this.sqlSession.insert("Reward.insertReward",rewardVO);
	}
	
	@Override
	public void rewardItemInsert(RewardItemVO rewardItemVO) {
		this.sqlSession.insert("Reward.insertRewardItem",rewardItemVO);
	}
	
	@Override
	public void rewardImageInsert(RewardMainImageVO rewardMainImageVO) {
		this.sqlSession.insert("Reward.insertRewardMainImage",rewardMainImageVO);
	}
	
	@Override
	public void rewardStoryInsert(RewardStoryVO rewardStoryVO) {
		this.sqlSession.insert("Reward.insertRewardStory",rewardStoryVO);
	}
	
	@Override
	public void rewardQuesionInsert(RewardQuesionVO rewardQuesionVO) {
		this.sqlSession.insert("Reward.insertRewardQuesion",rewardQuesionVO);
	}
	
	@Override
	public int getTotalNo2() {
		return this.sqlSession.selectOne("Investment.investmentTotalProjectNo");
	}
	
	@Override
	public int getTotalNo() {
		return this.sqlSession.selectOne("Reward.rewardTotalProjectNo");
	}
	
	@Override
	public void investmentProjectNo(int no) {
		this.sqlSession.update("Investment.investmentNo",no);
	}
	
	@Override
	public void rewardProjectNo(int no) {
		this.sqlSession.update("Reward.rewardNo",no);
	}
	
	@Override
	public List<RewardVO> idCountReward(String id) {
		return this.sqlSession.selectList("Reward.rewardSearch",id);
	}
	
	@Override
	public List<InvestmentVO> idCountInvestment(String id) {
		return this.sqlSession.selectList("Investment.InvestmentSearch",id);
	}
	
	@Override
	public List<InvestmentVO> investmentAll() {
		return this.sqlSession.selectList("Investment.investmentMainPage");
	}

	@Override
	public List<String> investmentMainImage() {
		return this.sqlSession.selectList("Investment.investmentMainImage");
	}
	
	@Override
	public List<RewardVO> rewardAll() {
		return this.sqlSession.selectList("Reward.rewardMainPage");
	}

	@Override
	public List<String> rewardMainImage() {
		return this.sqlSession.selectList("Reward.rewardMainImage");
	}

	
	/** 리워드 전체조회
	 * 
	 * @return
	 */
	@Override
	public List<RewardVO> getRewardList(RewardVO rewardVO) {
		return sqlSession.selectList("Reward.getRewardList", rewardVO);
	}
	
	@Override
	public int getRewardListCount() {
		return sqlSession.selectOne("Reward.getRewardListCount");
	}
	
	@Override
	public int getInvestmentListCount() {
		return sqlSession.selectOne("Investment.getInvestmentListCount");
	}
	
	@Override
	public int updateRewardApproved(int totalProjectNo) {
		return sqlSession.update("Reward.updateRewardApproved", totalProjectNo);
	}
	
	@Override
	public int updateInvestmentApproved(int totalProjectNo) {
		return sqlSession.update("Investment.updateInvestmentApproved", totalProjectNo);
	}
	
	@Override
	public RewardVO getReward(int totalProjectNo) {
		return sqlSession.selectOne("Reward.getReward", totalProjectNo);
	}
	
	@Override 
	public RewardItemVO getRewardItem(int totalProjectNo) {
		return sqlSession.selectOne("Reward.getRewardItem", totalProjectNo);
	}
	
	@Override
	public RewardStoryVO getRewardStory(int no) {
		return sqlSession.selectOne("Reward.getRewardStory", no);
	}

	@Override
	public List<InvestmentVO> getInvestmentList(InvestmentVO investmentVO) {
		return sqlSession.selectList("Investment.getInvestmentList", investmentVO);
	}
	
	@Override
	public InvestmentVO getInvestment(int no) {
		return sqlSession.selectOne("Investment.getInvestment", no);
	}
	
	@Override
	public InvestmentItemVO getInvestmentItem(int no) {
		return sqlSession.selectOne("Investment.getInvestmentItem", no);
	}

	@Override
	public InvestmentStoryVO getInvestmentStory(int no) {
		return sqlSession.selectOne("Investment.getInvestmentStory", no);
	}

	@Override
	public void insertMemberInvestmentFunding(MemberInvestmentFundingVO memberInvestmentFundingVO) {
		this.sqlSession.insert("Investment.insertFunding",memberInvestmentFundingVO);
	}
	
	@Override
	public void insertMemberRewardFunding(MemberRewardFundingVO memberRewardFundingVO) {
		this.sqlSession.insert("Reward.insertFunding",memberRewardFundingVO);
	}

	@Override
	public List<MemberInvestmentFundingVO> idCountInvestmentFunding(int no) {
		return sqlSession.selectList("Investment.getInvestmentFundingEa",no);
	}

	@Override
	public List<MemberRewardFundingVO> idCountRewardFunding(int no) {
		return sqlSession.selectList("Reward.getRewardFundingEa",no);
	}
	
	@Override
	public void updateInvestmentSoldEa(MemberInvestmentFundingVO memberInvestmentFundingVO) {
		sqlSession.update("Investment.updateInvestmentSold",memberInvestmentFundingVO);
	}

	@Override
	public void updateRewardSoldEa(MemberRewardFundingVO memberRewardFundingVO) {
		sqlSession.update("Reward.updateRewardSold",memberRewardFundingVO);
	}

	@Override
	public int investmentIdCount(String id) {
		return sqlSession.selectOne("Investment.investmentIdCount",id);
	}

	@Override
	public int rewardIdCount(String id) {
		return sqlSession.selectOne("Reward.rewardIdCount",id);
	}

	@Override
	public String getInvestmentMainImage(int investmentTotalProjectNo) {
		return sqlSession.selectOne("Investment.getInvestmentMainImage",investmentTotalProjectNo);
	}

	@Override
	public String getRewardMainImage(int rewardTotalProjectNo) {
		return sqlSession.selectOne("Reward.getRewardMainImage",rewardTotalProjectNo);
	}

	@Override
	public List<String> investmentProduct() {
		return sqlSession.selectList("Investment.investmentProduct");
	}

	@Override
	public List<String> rewardProduct() {
		return sqlSession.selectList("Reward.rewardProduct");
	}
}
