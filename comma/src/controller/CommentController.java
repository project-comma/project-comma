package controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import service.ICommentService;

@Controller
public class CommentController {

	
	@Autowired
	ICommentService coService;
	
	
	@RequestMapping("commentList.do")//댓글 리스트
	public ModelAndView commentList(@RequestParam HashMap<String, Object> params) {
		
		ModelAndView mav = new ModelAndView();
		ArrayList<HashMap<String, Object>> result = coService.readComment(params);
		System.out.println(result);
		mav.setViewName("");
		
		return mav;
	}
	
	@RequestMapping("commentWrite.do")//댓글 달기
	public ModelAndView commentWrite(@RequestParam HashMap<String, Object> params){
		
		ModelAndView mav = new ModelAndView();
		int result = coService.writeComment(params);
		System.out.println(result);
		
		return mav;
	}
	
	@RequestMapping("commentDelete.do")//댓글 삭제
	public String commentDelete(String number) {
		int result = coService.delComment(number);
		System.out.println(result);
		return "";
	}
	
	@RequestMapping("commentModify.do")//댓글 수정
	public String commentModify(@RequestParam HashMap<String, Object> params) {
		int result= coService.modComment(params);
		System.out.println(result);
		return "";
	}
	
	
	
}
