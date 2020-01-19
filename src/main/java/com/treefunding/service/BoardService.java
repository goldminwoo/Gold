package com.treefunding.service;

import java.util.List;

import com.treefunding.vo.BoardVO;
import com.treefunding.vo.ReplyVO;

public interface BoardService {

		boolean insertBoard(BoardVO boardVO);
		int getListCount(BoardVO boardVO);
		List<BoardVO> getBoardList(BoardVO boardVO);
		BoardVO getBoardContent(int no);
		BoardVO getBoardContent2(int no);	
		List<ReplyVO> selectReplyList(int no);
		boolean deleteReply(int no);	
		boolean deleteBoard(int no);
		boolean insertReply(ReplyVO replyVO);
		boolean deleteReplyOne(int no);
		boolean updateBoard(BoardVO boardVO);
}
