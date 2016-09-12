package kr.ac.cu.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.cu.service.FavoriteService;
import kr.ac.cu.vo.FavoriteVO;

@Controller
public class FavoriteController {
	@Autowired
	private FavoriteService favoriteService;

	@RequestMapping("favoriteJoinForm")
	public String joinForm() {
		return "favoriteJoinForm";
	}

	@RequestMapping("favoriteJoin")
	public String join(@ModelAttribute FavoriteVO vo, HttpSession session) {
		System.out.println(vo);
		favoriteService.addFavorite(vo);
		return "redirect:shoplist";
	}

	@RequestMapping("favoriteUpdateForm")
	public String updateForm() {
		return "favoriteUpdateForm";
	}

	@RequestMapping("favoriteUpdate")
	public String update(FavoriteVO vo) {
		favoriteService.updateFavorite(vo);

		return "redirect:favorite";
	}

	@RequestMapping("favorite")
	public String favoriteList(Model model) {
		List<FavoriteVO> favoriteList = favoriteService.favoriteList();
		model.addAttribute("favoriteList", favoriteList);
		return "/favoritelist";
	}

	@RequestMapping("favoriteDelete")
	public String delete(FavoriteVO vo, HttpSession session) {
		System.out.println(vo);
		int count = favoriteService.deleteFavorite(vo);
		if (count == 1) {
			return "redirect:/favorite";
		} else {
			return "redirect:/favorite";
		}
	}
}
