package kr.ac.cu.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartRequest;

import kr.ac.cu.service.BoardService;
import kr.ac.cu.service.ShopService;
import kr.ac.cu.vo.ShopVO;

@Controller
public class ShopController {
	
	@Autowired
	private ShopService shopService;
	
	@Autowired
	private BoardService boardService;
	
	
	@RequestMapping("addShopForm")
	public String addShopForm(){
		return "addShopForm";
	}
	
	
	@RequestMapping("addShop")
	public String addShop(@RequestParam("sname") String sname, @RequestParam("phone") String phone,
			@RequestParam("scategory") String scategory,
			@RequestParam("intro") String intro, HttpServletRequest req){
		
		ServletContext scontext = req.getSession().getServletContext();
		String realFolder = scontext.getRealPath(req.getParameter("simage"));
		
		String simage= realFolder;
		ShopVO shop = new ShopVO();
		shop.setSname(sname);
		shop.setPhone(phone);
		shop.setSimage(simage);
		shop.setScategory(scategory);
		shop.setIntro(intro);
		shopService.addShop(shop);
		
		return "redirect:/shoplist";
	}
	
	
	
	@RequestMapping("updateShopForm")
	public String updateShopForm(Model model, @RequestParam("snum") int snum){
		model.addAttribute("shopInfo", shopService.selectShop(snum));
		return "updateShopForm";
	}
	
	
	@RequestMapping("updateShop")
	public String updateShop(@RequestParam("snum") int snum, @RequestParam("sname") String sname, 
			@RequestParam("phone") String phone, @RequestParam("simage") String simage, 
			@RequestParam("scategory") String scategory, @RequestParam("intro") String intro){
		ShopVO shop = new ShopVO();
		shop.setSnum(snum);
		shop.setSname(sname);
		shop.setPhone(phone);
		shop.setSimage(simage);
		shop.setScategory(scategory);
		shop.setIntro(intro);
		
		shopService.updateShop(shop);
		
		return "redirect:/shoplist";
	}
	
	@RequestMapping("deleteShop")
	public String deleteShop(@RequestParam("snum") int snum){
		shopService.deleteShop(snum);
		
		return "redirect:/shoplist";
	}
	
	
	
	

	
	@RequestMapping("searchShop")
	public String searchShop(Model model, @RequestParam("option") String option, 
			@RequestParam("search") String search){
		if("이름".equals(option))
			model.addAttribute("shopList",shopService.nameSearch(search));
		else if("카테고리".equals(option))
			model.addAttribute("shopList",shopService.categorySearch(search));
		
		return "shoplist";
	}
	
	
	
	
	@RequestMapping("shoplist")
	public String shoplist(Model model, @RequestParam("pg") int pg){
		int pageSize = 4;
		int pageGroupSize = 5;
		int startRow = (pg-1)*pageSize+1;
		int endRow = pg*pageSize;
		int count = shopService.countShop();
		int number = 0;
		ShopVO shopvo = new ShopVO();
		shopvo.setStartRow(startRow);
		shopvo.setEndRow(endRow);
		System.out.println(shopvo.getSnum());
		System.out.println(shopvo);
		
		List<ShopVO> shopList = new ArrayList<>();
		
		
		
		
		
		if(count > 0){
			if(endRow > count) endRow = count;
			shopList = shopService.pagingShop(shopvo);
		} 
		else{ shopList = null; }
		
		
		
		
		
		
		number = count - (pg-1)*pageSize;
		
		int pageGroupCount = count/(pageSize*pageGroupSize)+
				(count%(pageSize*pageGroupSize)==0?0:1);
		
		int numPageGroup = (int)Math.ceil((double)pg/pageGroupSize);
		
		
		
		model.addAttribute("pg", pg);
		model.addAttribute("startRow", startRow);
		model.addAttribute("endRow", endRow);
		model.addAttribute("pageSize", pageSize);
		model.addAttribute("number", number);
		model.addAttribute("pageGroupSize", pageGroupSize);
		model.addAttribute("numPageGroup", numPageGroup);
		model.addAttribute("pageGroupCount", pageGroupCount+1);
		model.addAttribute("shopList", shopList);
		model.addAttribute("count", count);
		
		return "shoplist";
	}
	
	@RequestMapping("shopInfo")
	public String shopInfo(Model model, @RequestParam("snum") int snum){
		model.addAttribute("shopInfo", shopService.selectShop(snum));
		model.addAttribute("boardList",boardService.boardlist(snum));
		return "shopInfo";
	}
}
