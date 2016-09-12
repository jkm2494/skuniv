package kr.ac.cu.dao.Impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.cu.dao.FavoriteDAO;
import kr.ac.cu.vo.FavoriteVO;

@Repository("FavoriteDAO")
public class FavoriteDAOImpl implements FavoriteDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<FavoriteVO> listFavorite() throws RuntimeException {
		return sqlSession.selectList("kr.ac.cu.Favorite.listFavorite");
	}

	@Override
	public int deleteFavorite(FavoriteVO favorite) throws RuntimeException {
		return sqlSession.delete("kr.ac.cu.Favorite.deleteFavorite", favorite);
	}

	@Override
	public int addFavorite(FavoriteVO favorite) throws RuntimeException {
		return sqlSession.insert("kr.ac.cu.Favorite.addFavorite", favorite);
	} 

	@Override
	public int updateFavorite(FavoriteVO favorite) throws RuntimeException {
		return sqlSession.update("kr.ac.cu.Favorite.updateFavorite", favorite);
	}
	
	
	
}
