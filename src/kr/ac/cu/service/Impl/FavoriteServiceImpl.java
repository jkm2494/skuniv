package kr.ac.cu.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.cu.dao.FavoriteDAO;
import kr.ac.cu.service.FavoriteService;
import kr.ac.cu.vo.FavoriteVO;

@Repository("FavoriteService")
public class FavoriteServiceImpl implements FavoriteService {
	@Autowired
	private FavoriteDAO FavoriteDao;

	@Override
	public List<FavoriteVO> favoriteList() {
		return FavoriteDao.listFavorite();
	}

	@Override
	public int deleteFavorite(FavoriteVO favorite) {
		return FavoriteDao.deleteFavorite(favorite);
	}

	@Override
	public int updateFavorite(FavoriteVO favorite) {
		return FavoriteDao.updateFavorite(favorite);
	}

	@Override
	public int addFavorite(FavoriteVO favorite) {
		return FavoriteDao.addFavorite(favorite);
	}
	
	
}
