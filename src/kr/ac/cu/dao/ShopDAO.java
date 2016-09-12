package kr.ac.cu.dao;

import java.util.ArrayList;
import java.util.List;

import kr.ac.cu.vo.ShopVO;

public interface ShopDAO {
	public int addShop(ShopVO shop) throws RuntimeException;
	public int updateShop(ShopVO shop) throws RuntimeException;
	public int deleteShop(int snum) throws RuntimeException;
	public ShopVO selectShop(int snum) throws RuntimeException;
	public List<ShopVO> shoplist() throws RuntimeException;
	public List<ShopVO> nameSearch(String sname) throws RuntimeException;
	public List<ShopVO> categorySearch(String scategory) throws RuntimeException;
	public int countShop() throws RuntimeException;
	public List<ShopVO> pagingShop(ShopVO shopvo) throws RuntimeException;
}
