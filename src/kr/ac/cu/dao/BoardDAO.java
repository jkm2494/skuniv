package kr.ac.cu.dao;

import java.util.List;

import kr.ac.cu.vo.BoardVO;

public interface BoardDAO {
	public int addBoard(BoardVO board) throws RuntimeException;
	public int updateBoard(BoardVO board) throws RuntimeException;
	public int deleteBoard(int boardnum) throws RuntimeException;
	public BoardVO selectBoard(int boardnum) throws RuntimeException;
	public List<BoardVO> boardlist(int snum) throws RuntimeException;
}
