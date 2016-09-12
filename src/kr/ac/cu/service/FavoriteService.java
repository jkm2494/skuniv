package kr.ac.cu.service;

import java.util.List;

import kr.ac.cu.vo.FavoriteVO;

public interface FavoriteService {
	public List<FavoriteVO> favoriteList();
	public int deleteFavorite(FavoriteVO favorite);
	public int updateFavorite(FavoriteVO favorite);
	public int addFavorite(FavoriteVO favorite);
}
 