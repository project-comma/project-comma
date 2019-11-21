package controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import service.IReviewService;

@Controller
public class ReviewController {

	@Autowired
	private IReviewService reService;

	//리뷰페이지
	@RequestMapping("reviewList.do")
	public ModelAndView reviewList() {
		ModelAndView mav = new ModelAndView();
		ArrayList<HashMap<String, Object>> result= reService.allList();
		mav.setViewName("reviewList");
		return mav;
		
	}
	//리뷰 작성
	@RequestMapping("reviewWrite.do")
	public ModelAndView reviewWrite(@RequestParam HashMap<String, Object> params) {
		
		ModelAndView mav = new ModelAndView();
		
		int result = reService.writeReview(params);
		System.out.println(result);
		return mav;
	}
	
	
	//리뷰 삭제
	@RequestMapping("deleteReview.do")
	public ModelAndView deleteReview(String number) {
			
		ModelAndView mav = new ModelAndView();
		int result = reService.removeReview(number);
		System.out.println(result);
			
		return mav;
	}
	
	//리뷰 수정
	@RequestMapping("modifyReview.do")
	public ModelAndView modifyReview(@RequestParam HashMap<String, Object> params) {
		ModelAndView mav = new ModelAndView();
		int result = reService.modifyReview(params);
		System.out.println(result);
		
		return mav;
	}
	
	//리뷰상세보기
	@RequestMapping("ReadReview.do")
	public ModelAndView ReadReview(String number) {
		ModelAndView mav = new ModelAndView();
		
		HashMap<String, Object> result = reService.viewReview(number);
		System.out.println(result);
		
		return mav;
	}
	
	
}



