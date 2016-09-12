package kr.ac.cu.service.Impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.cu.dao.ShopDAO;
import kr.ac.cu.service.FaqService;
import kr.ac.cu.service.ShopService;
import kr.ac.cu.vo.ShopVO;

@Service("shopService")
public class ShopServiceImpl implements ShopService{
	@Autowired
	private ShopDAO shopDAO;
	
	public int addShop(ShopVO shop){
		return shopDAO.addShop(shop);
	}
	
	public int updateShop(ShopVO shop){
		return shopDAO.updateShop(shop);
	}
	
	public int deleteShop(int snum){
		return shopDAO.deleteShop(snum);
	}
	
	public ShopVO selectShop(int snum){
		return shopDAO.selectShop(snum);
	}
	
	public List<ShopVO> shoplist(){
		return shopDAO.shoplist();
	}
	
	public List<ShopVO> nameSearch(String sname){
		return shopDAO.nameSearch(sname);
	}
	
	public List<ShopVO> categorySearch(String scategory){
		return shopDAO.categorySearch(scategory);
	}
	
	public int countShop(){
		return shopDAO.countShop();
	}
	public List<ShopVO> pagingShop(ShopVO shopvo){
		return shopDAO.pagingShop(shopvo);
	}
}
