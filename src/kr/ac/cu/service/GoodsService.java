package kr.ac.cu.service;

import java.util.List;

import kr.ac.cu.vo.GoodsVO;

public interface GoodsService {
	//�ʿ��� ��� ����
	//ȸ������
	public int insertgoods(GoodsVO goods);
	public int deletegoods(int gnum);
	public int updategoods(GoodsVO goods);
	public GoodsVO selectGoods(String id) ;
	public List<GoodsVO> getGoodsListService();	
}
