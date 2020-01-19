package com.treefunding.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.treefunding.dao.BoardDAO;
import com.treefunding.vo.BoardVO;
import com.treefunding.vo.ReplyVO;

@Service
public class BoardServiceImpl	implements BoardService {

	@Autowired
	private BoardDAO boardDAO;
	
	@Transactional
	@Override
	public boolean insertBoard(BoardVO boardVO) {
		return boardDAO.insertBoard(boardVO);
	}
	
	@Transactional
	@Override
	public int getListCount(BoardVO boardVO) {
		return boardDAO.getListCount(boardVO);
	}
	
	@Transactional
	@Override
	public List<BoardVO> getBoardList(BoardVO boardVO) {
		return boardDAO.getBoardList(boardVO);
	}
	
	@Transactional
	@Override
	public BoardVO getBoardContent(int no) {
		boardDAO.updateHitCount(no);
		return boardDAO.getBoardContent(no);
	}//내용보기+조회수 증가=>트랜잭션 적용
	
	@Override
	public BoardVO getBoardContent2(int no) {
		return boardDAO.getBoardContent(no);
	}//답변폼+수정폼+삭제폼->조회수증가 안함.

	@Transactional
	@Override
	public List<ReplyVO> selectReplyList(int no) {
		return boardDAO.selectReplyList(no);
	}

	@Transactional
	@Override
	public boolean deleteReply(int no) {
		return boardDAO.deleteReply(no);
	}

	@Transactional
	@Override
	public boolean deleteBoard(int no) {
		return boardDAO.deleteBoard(no);
	}

	@Transactional
	@Override
	public boolean insertReply(ReplyVO replyVO) {
		return boardDAO.insertReply(replyVO);
	}

	@Transactional
	@Override
	public boolean deleteReplyOne(int no) {
		return boardDAO.deleteReplyOne(no);
	}

	@Transactional
	@Override
	public boolean updateBoard(BoardVO boardVO) {
		return boardDAO.updateBoard(boardVO);
	}

	
}
