package controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import service.IReviewService;

@Controller
public class ReviewController {

	@Autowired
	private IReviewService reService;

	// 리뷰페이지
	@RequestMapping("reviewList.do")
	public ModelAndView reviewList() {
		ModelAndView mav = new ModelAndView();
		ArrayList<HashMap<String, Object>> result = reService.allList();
		mav.setViewName("reviewList");
		return mav;

	}

	// 리뷰 작성

	@RequestMapping("reviewWrite.do")
	public ModelAndView reviewWrite(HttpSession session, @RequestParam HashMap<String, Object> params,
			@RequestParam("reviewImage") MultipartFile file) {
		System.out.println("review controller-reviewWrite");
	
		String session_id = (String) session.getAttribute("id");
		
		ModelAndView mav = new ModelAndView();
		System.out.println(params.get("content"));

		int result = reService.writeP_Review(session_id,params,file);
		if(result==1) {
			System.out.println("내용이 비었습니다");
		}
		else if(result==2) {
			System.out.println("이미지가 비었습니다");
		}
		else{
			System.out.println("리뷰쓰기성공!!!");
		}
		
		mav.setViewName("reviewList");
		
		//System.out.println(result);
		return mav;
	}
	 

	/*
	 * // 리뷰 작성
	 * 
	 * @ResponseBody
	 * 
	 * @RequestMapping("reviewWrite.do") public Map reviewWrite(@RequestParam
	 * HashMap<String, Object> params) {
	 * 
	 * Map<String, Object> map = new HashMap<String, Object>();
	 * 
	 * // map.put("controller", "reviewWrite.do"); return map; }
	 */

	// 리뷰 삭제
	@RequestMapping("deleteReview.do")
	public ModelAndView deleteReview(String number) {

		ModelAndView mav = new ModelAndView();
		int result = reService.removeReview(number);
		System.out.println(result);

		return mav;
	}

//리뷰삭제
	@ResponseBody
	@RequestMapping("deleteReviewForm.do")
	public Map deleteReviewForm(String number) {
		Map<String, Object> map = new HashMap<String, Object>();
	
//		map.put("controller", "deleteReviewForm");
		return map;
	}

	// 리뷰 수정
	@RequestMapping("modifyReview.do")
	public ModelAndView modifyReview(@RequestParam HashMap<String, Object> params) {
		ModelAndView mav = new ModelAndView();
		int result = reService.modifyReview(params);
		System.out.println(result);

		return mav;
	}

	// 리뷰보기
	@RequestMapping("ReadReview.do")
	public ModelAndView ReadReview(String number) {
		System.out.println("ReadReview.do contrpller");
		ModelAndView mav = new ModelAndView();

		HashMap<String, Object> result = reService.viewReview(number);
		System.out.println(result);

		return mav;
	}
	
	

}
