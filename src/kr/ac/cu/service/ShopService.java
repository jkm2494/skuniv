package kr.ac.cu.service;

import java.util.ArrayList;
import java.util.List;

import kr.ac.cu.vo.ShopVO;

public interface ShopService {
	public int addShop(ShopVO shop);
	public int updateShop(ShopVO shop);
	public int deleteShop(int snum);
	public ShopVO selectShop(int snum);
	public List<ShopVO> shoplist();
	public List<ShopVO> nameSearch(String sname);
	public List<ShopVO> categorySearch(String scategory);
	public int countShop();
	public List<ShopVO> pagingShop(ShopVO shopvo);
}
