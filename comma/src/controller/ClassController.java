package controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import service.IClassService;

@Controller
public class ClassController {

	@Autowired
	private IClassService cService;

	// 메인페이지
	@RequestMapping("main.do")
	public String main() {
		System.out.println("메인들어왓니 ?");
//		List<HashMap<String, Object>> result = cService.popList();
//		result.get(0);
		ArrayList<HashMap<String, Object>> result = cService.popList();
		

		return "main";
	}

	// 클래스리스트
	@RequestMapping("classList.do")
	public String classList() {
		ArrayList<HashMap<String, Object>> result = cService.allList();
		System.out.println(result);
		return "classList";

	}



	// 클래스상세내용
	@RequestMapping("class.do")
	public ModelAndView classw(int number) {
		number = 4;

//		System.out.println(id);
		ModelAndView mav = new ModelAndView();
		HashMap<String, Object> result = cService.viewClass(number);
//		System.out.println(result);

		mav.setViewName("class");
		return mav;

	}

	// 클래스 등록
	@RequestMapping("classResist.do")
	public ModelAndView c_Resist(@RequestParam HashMap<String, Object> params) {
		ModelAndView mav = new ModelAndView();

		int result = cService.resistClass(params);
		System.out.println(result);

		mav.setViewName("main");
		return mav;
	}
	
	

	// 클래스 등록폼
	@RequestMapping("classResistForm.do")
	public String classResistForm(HttpSession session) {
		
		
		
		
		return "classResistForm";
	}

	// 클래스수정
	@RequestMapping("classModify.do")
	public ModelAndView classModify(@RequestParam HashMap<String, Object> params) {
		
		int result = cService.modifyClass(params);
		System.out.println(result);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject(result);
		
		mav.setViewName("mypage_t");
		return mav;
	}

	// 클래스수정폼
	@RequestMapping("classModifyForm.do")
	public ModelAndView classModifyForm(int number) {
		
		ModelAndView mav = new ModelAndView();
		HashMap<String, Object> cl = cService.viewClass(number);
		mav.addObject("class", cl);
		mav.setViewName("classModifyForm");
		return mav;
	}

	// 관심클래스
	@RequestMapping("likeClass.do")
	public void likeClass(String number) {
		String result = cService.interClass(number);
		System.out.println(result);
		
	}
	
	
	// 클래스 검색
	@RequestMapping("searchClass.do")
	public ModelAndView searchClass(@RequestParam HashMap<String, Object> params) {
		ModelAndView mav = new ModelAndView();
		ArrayList<HashMap<String, Object>> result = cService.searchClass(params);
		return mav;
	}
	
	//클래스 삭제
	@RequestMapping("deleteClass.do")
	public String deleteClass(String number) {
		int result = cService.removeClass(number);
		System.out.println(result);
		return "";
	}
	
	//수강신청현황
	@RequestMapping("enroll.do")
	public ModelAndView enroll() {
		ModelAndView mav = new ModelAndView();
		
		
		mav.setViewName("enroll");
		return mav;
	}


	public ModelAndView moveToDeclaration(@RequestParam HashMap<String, Object> params) {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("declaration_s");
		
		return mav;
	}
}
