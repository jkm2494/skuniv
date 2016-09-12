package kr.ac.cu.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.cu.dao.BoardDAO;
import kr.ac.cu.service.BoardService;
import kr.ac.cu.vo.BoardVO;

@Service("boardService")
public class BoardServiceImpl implements BoardService{
	@Autowired
	private BoardDAO boardDAO;
	
	public int addBoard(BoardVO board){
		return boardDAO.addBoard(board);
	}
	
	public int updateBoard(BoardVO board){
		return boardDAO.updateBoard(board);
	}
	
	public int deleteBoard(int boardnum){
		return boardDAO.deleteBoard(boardnum);
	}
	
	public BoardVO selectBoard(int boardnum){
		return boardDAO.selectBoard(boardnum);
	}
	
	public List<BoardVO> boardlist(int snum){
		return boardDAO.boardlist(snum);
	}
}
