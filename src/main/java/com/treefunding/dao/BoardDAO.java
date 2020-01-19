package com.treefunding.dao;

import java.util.List;

import com.treefunding.vo.BoardVO;
import com.treefunding.vo.ReplyVO;

public interface BoardDAO {

	boolean insertBoard(BoardVO boardVO);	
	int getListCount(BoardVO boardVO);	
	List<BoardVO> getBoardList(BoardVO boardVO);
	BoardVO getBoardContent(int no);
	void updateHitCount(int no);
	List<ReplyVO> selectReplyList(int no);
	boolean deleteReply(int no);	
	boolean deleteBoard(int no);
	boolean insertReply(ReplyVO replyVO);
	boolean deleteReplyOne(int no);
	boolean updateBoard(BoardVO boardVO);
}
