package kr.ac.cu.dao;

import java.util.List;

import kr.ac.cu.vo.GoodsVO;


public interface GoodsDao {
	public int insertgoods(GoodsVO goods) throws RuntimeException;
	public int updategoods(GoodsVO goods) throws RuntimeException;
	public int deletegoods(int gnum) throws RuntimeException;
	public GoodsVO selectGoods (String id) throws RuntimeException;
	public List<GoodsVO> getGoodsList( ) ;
}