package com.project.fd.member.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.fd.member.menu.model.MemberMenuAllVO;
import com.project.fd.member.menu.model.MemberMenuGroupVO;
import com.project.fd.member.menu.model.MemberMenuService;

@Controller
@RequestMapping("/member/menu")
public class MemberMenuController {
	
	@Autowired private static Logger logger=LoggerFactory.getLogger(MemberMenuController.class);
	@Autowired MemberMenuService menuServ;
	
	
	@RequestMapping("/menuGroupInc.do")
	public String storeMenuGroupInc(@RequestParam int storeNo,Model model) {
		logger.info("점포 메뉴그룹출력 div, storeNo={}",storeNo);
		List<MemberMenuGroupVO> list=menuServ.selectMenuGroupByStoreNo(storeNo);
		logger.info("점포 메뉴그룹 list.size={}",list.size());
		model.addAttribute("menuGroupList",list);
		return "member/store/menu/menuGroupInc";
	}
	
	@RequestMapping("/menuInc.do")
	public String storeMenuInc(@RequestParam int sMGroupNo,Model model) {
		logger.info("점포 메뉴 출력 div, sMGroupNo={}",sMGroupNo);
		List<MemberMenuAllVO> list=menuServ.selectMenuBySMGroupNo(sMGroupNo);
		logger.info("점포메뉴출력 list.size={}",list.size());
		model.addAttribute("menuList",list);
		logger.info("점포 메뉴옵션 출력,size테스트 : ",list.get(0).getMenuOptionList().size());
		return "member/store/menu/menuInc";
	}
}
