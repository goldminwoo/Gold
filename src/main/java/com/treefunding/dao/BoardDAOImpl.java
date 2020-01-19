package com.treefunding.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.treefunding.vo.BoardVO;
import com.treefunding.vo.ReplyVO;

@Repository
public class BoardDAOImpl implements BoardDAO{

	@Autowired
	private SqlSession sqlSession;

	@Override
	public boolean insertBoard(BoardVO boardVO) {

		return sqlSession.insert("Board.insertBoard", boardVO) > 0;
	}

	@Override
	public int getListCount(BoardVO boardVO) {
		return sqlSession.selectOne("Board.getListCount", boardVO);
	}

	@Override
	public List<BoardVO> getBoardList(BoardVO boardVO) {
		return sqlSession.selectList("Board.getBoardList", boardVO);
	}

	@Override
	public BoardVO getBoardContent(int no) {
		return sqlSession.selectOne("Board.getBoardContent",no);
	};

	@Override
	public void updateHitCount(int no) {
		sqlSession.update("Board.updateHitCount",no);
	}

	

	@Override
	public List<ReplyVO> selectReplyList(int no) {
		return sqlSession.selectList("Board.selectReplyList",no);
	}

	@Override
	public boolean deleteReply(int no) {
		return sqlSession.delete("Board.deleteReply",no) > 0;
	}
	
	@Override
	public boolean deleteBoard(int no) {
		return sqlSession.delete("Board.deleteBoard",no) > 0 ;
	}

	@Override
	public boolean insertReply(ReplyVO replyVO) {
		return sqlSession.insert("Board.insertReply",replyVO) > 0;
	}

	@Override
	public boolean deleteReplyOne(int no) {
		return sqlSession.delete("Board.deleteReplyOne", no) > 0 ;
	}
	
	@Override
	public boolean updateBoard(BoardVO boardVO) {
		return sqlSession.update("Board.updateBoard", boardVO) > 0;
	}
}
