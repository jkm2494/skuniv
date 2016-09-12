package kr.ac.cu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ac.cu.service.GoodsInfoService;
import kr.ac.cu.service.GoodsService;
import kr.ac.cu.vo.GoodsInfoVO;
@Controller
public class goodsInfoController {
		@Autowired
		private GoodsInfoService goodsInfoService;
		
		@RequestMapping("insertgoodsInfo")
		public String insertgoods(@RequestParam("ginum")int ginum,@RequestParam("gnum")int gnum,
				@RequestParam("gimage")String gimage,@RequestParam("gname")String gname,
				@RequestParam("gprice")int gprice,@RequestParam("gsize")String gsize,
				@RequestParam("quantity")int quantity){
			GoodsInfoVO goodsInfo=new GoodsInfoVO();
			goodsInfo.setGinum(ginum);
			goodsInfo.setGnum(gnum);
			goodsInfo.setGimage(gimage);
//			goodsInfo.set
//			goodsInfo.set
//			
//			goodsService.insertgoods(goods);
			return "redirect:/goods";
		}
		
		
}
