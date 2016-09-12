package kr.ac.cu.dao.Impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.cu.dao.ShopDAO;
import kr.ac.cu.vo.ShopVO;

@Repository("shopDAO")
public class ShopDAOImpl implements ShopDAO{
	@Autowired
	private SqlSession sqlSession;
	
	public int addShop(ShopVO shop) throws RuntimeException{
		return sqlSession.insert("kr.ac.cu.Shop.addShop", shop);
	}
		
	public int updateShop(ShopVO shop) throws RuntimeException{
		return sqlSession.update("kr.ac.cu.Shop.updateShop", shop);
	}
	
	public int deleteShop(int snum) throws RuntimeException{
		return sqlSession.delete("kr.ac.cu.Shop.deleteShop", snum);
	}
	
	public ShopVO selectShop(int snum) throws RuntimeException{
		return (ShopVO)sqlSession.selectOne("kr.ac.cu.Shop.selectShop", snum);
	}
	
	public List<ShopVO> shoplist() throws RuntimeException{
		return sqlSession.selectList("kr.ac.cu.Shop.shoplist");
	}
	
	public List<ShopVO> nameSearch(String sname) throws RuntimeException{
		return sqlSession.selectList("kr.ac.cu.Shop.nameSearch", sname);
	}
	
	public List<ShopVO> categorySearch(String scategory) throws RuntimeException{
		return sqlSession.selectList("kr.ac.cu.Shop.categorySearch", scategory);
	}
	
	public int countShop() throws RuntimeException{
		return sqlSession.selectOne("kr.ac.cu.Shop.countShop");
	}
	public List<ShopVO> pagingShop(ShopVO shopvo) throws RuntimeException{
		/*HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("page", pagevo);*/
				
		return sqlSession.selectList("kr.ac.cu.Shop.pagingShop", shopvo);
	}
}
