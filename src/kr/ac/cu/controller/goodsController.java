package kr.ac.cu.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import kr.ac.cu.service.GoodsService;

import kr.ac.cu.vo.GoodsVO;

@Controller
public class goodsController {
	@Autowired
	private GoodsService goodsService;
	
	@RequestMapping("goods")
	public String goods(Model model,HttpServletRequest request){

		model.addAttribute("goodsList", goodsService.getGoodsListService());
		
		return "goods";
	}
	
	
	@RequestMapping("addgoods")
	public String insertgoodsform(){
		return "addGoods";
	}


	@RequestMapping("insertgoods")
	public String insertgoods(@RequestParam("gnum")int gnum,@RequestParam("gname")String gname,
			@RequestParam("gcnum")int gcnum,@RequestParam("snum")int snum,@RequestParam("ginum")int ginum){
		GoodsVO goods=new GoodsVO();
		goods.setGnum(gnum);
		goods.setGname(gname);
		goods.setGcnum(gcnum);
		goods.setSnum(snum);
		goods.setGinum(ginum);;
		goodsService.insertgoods(goods);
		return "redirect:/shopInfo";
	}
	
	@RequestMapping("deletegoods")
	public String deletegoods(@RequestParam("gnum")int gnum){	
		goodsService.deletegoods(gnum);
		return "redirect:/goods";
	}
	
	@RequestMapping("updategoods")
	public String updategoods(@RequestParam("gnum")int gnum,@RequestParam("gname")String gname,
			@RequestParam("gimage")String gimage,@RequestParam("gprice")int gprice,
			@RequestParam("gcnum")int gcnum,@RequestParam("snum")int snum,
			@RequestParam("gsize")String gsize,@RequestParam("quantity")int quantity){
		GoodsVO goods=new GoodsVO();
		goods.setGnum(gnum);
		goods.setGname(gname);
		goods.setGcnum(gcnum);
		goods.setSnum(snum);
			goodsService.updategoods(goods);
		return "redirect:/goods";
	}
	@RequestMapping("updategoodsform")
	public String updategoodsform(){
		return "updategoodsform";
	}
}
