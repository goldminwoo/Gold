package com.treefunding.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.util.ObjectUtils;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.treefunding.service.BoardService;
import com.treefunding.vo.BoardVO;
import com.treefunding.vo.ReplyVO;

@Controller
@RequestMapping(value = "/board")
public class BoardController {

	@Autowired
	BoardService boardService;

	/** 글 상세내용 페이지
	 * 
	 * @param mav
	 * @return
	 */
	@RequestMapping(value = "/detail")
	public ModelAndView detail(HttpSession session,
			ModelAndView mav, int no, 
			int page, String state, BoardVO boardVO) {
		//no,page,state 3개의 피라미터이름에 저장된 값을 받는다.

		List<ReplyVO> replyVOList = null;

		if(state.equals("content")) {//내용보기 일때만 실행=>
			//조회수 증가=>트랜잭션 적용    	
			boardVO=boardService.getBoardContent(no);
			replyVOList = boardService.selectReplyList(no);

			String id=(String)session.getAttribute("id");

			if(id != null) {	//로그인 했을 경우
				mav.addObject("replyId",id);
				if(id.equals(boardVO.getId())){	//게시물 쓴 id와 로그인 id가 일치할 경우

					mav.addObject("writer",id);						
				}
			}
		}else {//답변폼,수정폼,삭제폼일때 실행=>조회수
			//증가 안함.트랜잭션 적용안함.    	
			boardVO=boardService.getBoardContent2(no);	
		}

		mav.addObject("page",page);//page키이름에 쪽번호저장
		mav.addObject("boardVO",boardVO);
		mav.addObject("replyVOList",replyVOList);
		if(state.equals("content")) {
			//board_cont키이름에 줄바꿈한 내용을 저장      	
			mav.setViewName("board/board_detail");//내용보기
			//뷰페이지 경로=>/WEB-INF/views/board/board_cont.jsp    	
		}else if(state.equals("edit")) {//수정폼
			mav.setViewName("board/board_edit");
		}else if(state.equals("del")) {//삭제폼
			mav.setViewName("board/board_del");
		}
		return mav;
	}

	/**	글 목록 페이지
	 * 
	 * @param mav
	 * @return
	 */
	@RequestMapping(value = "/list")
	public ModelAndView list(HttpServletRequest request,
			ModelAndView mav, BoardVO boardVO) {

		int page = 1;				//쪽번호
		int	pageLimit = 10;			//한 페이지에 보여지는 목록 개수
		if(ObjectUtils.isEmpty(request.getParameter("page")) == false) {
			//get으로 전달된 페이지 번호가 있는 경우
			page=Integer.parseInt(request.getParameter("page"));
			//페이지 번호를 숫자로 바꿔서 저장
		}

		String searchCondition = request.getParameter("searchCondition");
		String searchKeyword = request.getParameter("searchKeyword");
		boardVO.setSearchCondition(request.getParameter("searchCondition"));
		boardVO.setSearchKeyword("%"+searchKeyword+"%");

		int listCount = boardService.getListCount(boardVO);
		boardVO.setStartRow((page-1)*10+1);						//시작행번호
		boardVO.setEndRow(boardVO.getStartRow()+pageLimit-1);	//끝행번호

		List<BoardVO> boardList = boardService.getBoardList(boardVO);

		//총페이지
		int maxPage=(int)((double)listCount/pageLimit+0.95);
		//시작페이지
		int startPage=(((int)((double)page/10+0.9))-1)*10+1;
		//마지막 페이지
		int endPage=maxPage;
		if(endPage > startPage +10 -1)
			endPage=startPage+10-1;

		mav.addObject("boardList",boardList);
		mav.addObject("page",page);
		mav.addObject("startPage",startPage);
		mav.addObject("endPage",endPage);
		mav.addObject("maxPage",maxPage);
		mav.addObject("listCount",listCount);
		mav.addObject("searchCondition",searchCondition);
		mav.addObject("searchKeyword",searchKeyword);
		mav.setViewName("board/board_list");
		return mav;
	}

	/**	글 작성 페이지
	 * 
	 * @param request
	 * @param mav
	 * @return
	 */
	@RequestMapping(value = "/write")
	public ModelAndView write(HttpServletRequest request,ModelAndView mav) {
		HttpSession session = request.getSession();

		if(ObjectUtils.isEmpty(session.getAttribute("id"))) {	//로그인 하지 않은 경우
			mav.addObject("message", "로그인 해주세요.");
			mav.setViewName("member/login");
		}else {													//로그인 한 경우
			int page=1;
			if(request.getParameter("page") != null) {
				page=Integer.parseInt(request.getParameter("page"));			
			}

			mav.addObject("page",page);
			mav.addObject("id",session.getAttribute("id"));
			mav.setViewName("board/board_write");
		}
		return mav;
	}

	/** 글 등록 메서드
	 * 
	 * @param request
	 * @param mav
	 * @param boardVO
	 * @return
	 */
	@RequestMapping(value = "/insert")
	public ModelAndView insert(HttpServletRequest request,ModelAndView mav, BoardVO boardVO) {
		HttpSession session = request.getSession();
		boardVO.setId((String)(session.getAttribute("id")));

		if(StringUtils.isEmpty(boardVO.getTitle().trim())) {	//제목을 쓰지 않았을 경우
			mav.addObject("message","제목을 입력하세요.");
			mav.setViewName("board/board_write");
			return mav;
		}
		if(boardService.insertBoard(boardVO)) {	//게시판 글쓰기 성공
			/*mav.addObject("message","게시물 등록 완료");*/
			mav.setViewName("redirect:list");
		}else {								//게시판 글쓰기 실패
			/*mav.addObject("message","게시물 등록 실패");*/
			mav.setViewName("redirect:list");
		}

		return mav;
	}

	/**	게시물 삭제
	 * 
	 * @param mav
	 * @param no
	 * @return
	 */
	@RequestMapping(value = "/deleteBoard")
	public ModelAndView delete(ModelAndView mav, int no) {
		if(!(ObjectUtils.isEmpty(boardService.selectReplyList(no)))) {
			//댓글이 있을 경우 댓글 삭제
			boardService.deleteReply(no);
		}
		boardService.deleteBoard(no);
		//게시물 삭제
		mav.setViewName("redirect:list");
		return mav;
	}

	/**	댓글 입력
	 * 
	 * @param mav
	 * @param replyVO
	 * @param boardNo
	 * @param page
	 * @return
	 */
	@RequestMapping(value = "/insertReply")
	public ModelAndView insertReply(ModelAndView mav, ReplyVO replyVO,
			int boardNo, int page) {

		boardService.insertReply(replyVO);

		mav.setViewName("redirect:detail?no="+boardNo+"&page="+page+"&state=content");
		return mav;
	}


	/**	댓글삭제
	 * 
	 * @param mav
	 * @param no
	 * @return
	 */
	@RequestMapping(value = "/deleteReply")
	public ModelAndView deleteReply(ModelAndView mav, int no,
			int boardNo, int page) {

		boardService.deleteReplyOne(no);
		mav.setViewName("redirect:detail?no="+boardNo+"&page="+page+"&state=content");
		return mav;

	}

	/**	게시물 수정
	 * 
	 * @param no
	 * @param mav
	 * @return
	 */
	@RequestMapping(value = "/modifyBoard")
	public ModelAndView modifyBoard(ModelAndView mav, int no, int page) {
		BoardVO boardVO = boardService.getBoardContent(no);
		mav.addObject("boardVO", boardVO);
		mav.addObject("page", page);
		mav.setViewName("board/board_modify");

		return mav;
	}

	@RequestMapping(value = "/modifiyBoardOk")
	public ModelAndView modifyBoardOk(ModelAndView mav,
			BoardVO boardVO, int page) {

		boardService.updateBoard(boardVO);
		mav.setViewName("redirect:detail?no="+boardVO.getNo()+"&page="+page+"&state=content");

		return mav;

	}

}
