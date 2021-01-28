package com.project.fd.admin.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.fd.admin.gift.model.AdminGiftCategoryProductVO;
import com.project.fd.admin.gift.model.AdminGiftCategoryService;
import com.project.fd.admin.gift.model.AdminGiftCategoryVO;
import com.project.fd.admin.gift.model.AdminGiftProductService;
import com.project.fd.admin.gift.model.AdminGiftProductVO;
import com.project.fd.common.FileUploadUtil;

@Controller
@RequestMapping("/admin/menu6")
public class AdminGiftProductController {
	private Logger logger=LoggerFactory.getLogger(AdminGiftProductController.class);
	
	@Autowired
	private AdminGiftProductService giftProductService;
	
	@Autowired
	private AdminGiftCategoryService giftCategoryService;
	
	@Autowired
	private FileUploadUtil fileUtil;
	
	@RequestMapping(value="/giftProduct.do", method = RequestMethod.GET)
	public String list_get(Model model) {
		logger.info("list_get 선물 상품 목록 화면 출력");
		
		//AllView
		List<AdminGiftCategoryProductVO> list=giftProductService.selectAll2();
		logger.info("글 목록 결과, list.size={}", list.size());
		
		//
		List<AdminGiftCategoryVO> cList=giftCategoryService.selectAll();
		
		model.addAttribute("list", list);
		model.addAttribute("cList", cList);
				
		return "/admin/menu6/giftProduct";
	}
	
	/*
	@RequestMapping(value="/giftCategory.do", method = RequestMethod.POST)
	public String list_post(@ModelAttribute AdminGiftCategoryVO giftCategoryVo , HttpServletRequest request) {
		logger.info("list_post 작업 후 선물 카테고리 목록 화면 출력, 파라미터 vo={}", giftCategoryVo);
		
		int cnt=giftCategoryService.insertGiftCategory(giftCategoryVo);
		logger.info("선물 카테고리 목록, cnt={}", cnt);
		return "redirect:/admin/menu6/giftCategory.do";
	}
	*/

	@RequestMapping(value="/giftProduct/write.do", method = RequestMethod.POST)
	public String write_post(@ModelAttribute AdminGiftProductVO giftProductVo,
			HttpServletRequest request) {
		logger.info("write_post 선물 상품 등록 처리, 파라미터 vo={}", giftProductVo);
		
		//
		//파일 업로드 처리
		String originName="", fileName="";
		long fileSize=0;
		
		try {
			List<Map<String, Object>> fileList
				=fileUtil.fileUplaod(request, FileUploadUtil.GIFT_PRODUCT_TYPE);
			for(Map<String, Object> fileMap : fileList) {
				originName=(String) fileMap.get("originalFileName");
				fileName=(String) fileMap.get("fileName");
				fileSize=(Long)fileMap.get("fileSize");	
			}//for
		} catch (IllegalStateException e) {
			logger.info("파일 업로드 실패!");
			e.printStackTrace();
		} catch (IOException e) {
			logger.info("파일 업로드 실패!");
			e.printStackTrace();
		}
		
		giftProductVo.setgProductFilename(fileName);
		logger.info("파일 이름 확인, fileName={}", fileName);		
		//
		
		int cnt=giftProductService.insertGiftProduct(giftProductVo);
		logger.info("선물 상품 등록 처리 결과, cnt={}", cnt);
		
		return "redirect:/admin/menu6/giftProduct.do";
	}
	
	@RequestMapping(value="/giftProduct/edit.do", method = RequestMethod.POST)
	public String edit_post(@ModelAttribute AdminGiftProductVO giftProductVo,
			HttpServletRequest request, @RequestParam String oldFileName, Model model) {
		logger.info("edit_post 선물 상품 수정 처리, 파라미터 vo={}, oldFileName={}", giftProductVo, oldFileName);
		
		//업로드 처리
		String fileName="", originName="";
		long fileSize=0;
		try {
			List<Map<String, Object>> fileList
			=fileUtil.fileUplaod(request, FileUploadUtil.GIFT_PRODUCT_TYPE);
			for(Map<String, Object> map : fileList) {
				originName=(String) map.get("originalFileName");
				fileName=(String) map.get("fileName");
				fileSize=(Long) map.get("fileSize");				
			}//for
			
			logger.info("파일 업로드 성공");
		} catch (IllegalStateException e) {
			logger.info("파일 업로드 실패");
			e.printStackTrace();
		} catch (IOException e) {
			logger.info("파일 업로드 실패");
			e.printStackTrace();
		}
		
		giftProductVo.setgProductFilename(fileName);

		
		String msg="선물 상품 수정 실패", url="/admin/menu6/giftProduct.do";
		int cnt=giftProductService.updateGiftProduct(giftProductVo);
		logger.info("선물 상품 수정 처리 결과, cnt={}", cnt);
		
		if (cnt>0) {
			//새로 업로드한 경우, 기존 파일이 존재하면 기존 파일 삭제
			if(fileName!=null && !fileName.isEmpty()) {
				String upPath 
				= fileUtil.getUploadPath(FileUploadUtil.GIFT_PRODUCT_TYPE, request);
				File oldFile = new File(upPath, oldFileName);
				if(oldFile.exists()) {
					boolean bool=oldFile.delete();
					logger.info("기존 파일 삭제 여부 :{}", bool);
					logger.info("선물 상품 - 이미지가 수정되었습니다.");
				}					
			msg="선물 상품을 수정하였습니다.";
			}//inner if
		}

		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
		//return "redirect:/admin/menu6/giftPrice.do";
	}
	
	@RequestMapping(value="/giftProduct/delete.do", method = RequestMethod.POST)
	public String delete_post(@ModelAttribute AdminGiftProductVO giftProductVo,
			HttpServletRequest request, Model model) {
		
		logger.info("delete_post 선물 상품  삭제처리, 파라미터 vo={}", giftProductVo);
		
		String msg="선물 상품 삭제 실패", url="/admin/menu6/giftProduct.do";
		int cnt=giftProductService.deleteGiftProduct(giftProductVo);
		logger.info("선물 상품 삭제 처리 결과, cnt={}", cnt);
		
		if (cnt>0) {
			msg="선물 상품을 삭제하였습니다.";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
		//return "redirect:/admin/menu6/giftPrice.do";
	}
}
