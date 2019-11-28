package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import service.IClassService;

@Controller
public class ClassController {

	@Autowired
	private IClassService cService;

	@RequestMapping("mainForm.do")
	public ModelAndView main() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main");
		return mav;
	}

	// 메인페이지
	@RequestMapping("mainList.do")
	public void main(HttpServletResponse response) throws IOException {
		System.out.println("메인들어왓니 ?");
//		List<HashMap<String, Object>> result = cService.popList();
//		result.get(0);
		ArrayList<HashMap<String, Object>> result = cService.popList();

//		System.out.println(result);
		JSONArray jarr = new JSONArray();
		for (int i = 0; i < result.size(); i++) {
			JSONObject jo = new JSONObject();
			jo.put("c_name", result.get(i).get("c_name"));
			jo.put("c_image", result.get(i).get("c_image"));
			jo.put("c_price", result.get(i).get("c_price"));
			jarr.put(jo);
		}
		response.getWriter().println(jarr);

	}

	// 클래스폼페이지 이동
	@RequestMapping("classList.do")
	public ModelAndView classList() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("classListForm");
		return mav;

	}

	//클래스 리스트 보여주기
	@RequestMapping("classAllList.do")
	public void classAllList(HttpServletResponse response) throws IOException {
		ArrayList<HashMap<String, Object>> result = cService.allList();

//		System.out.println(result);
		JSONArray jarr = new JSONArray();
		for (int i = 0; i < result.size(); i++) {
			JSONObject jo = new JSONObject();
			jo.put("c_name", result.get(i).get("c_name"));
			jo.put("c_image", result.get(i).get("c_image"));
			jo.put("c_price", result.get(i).get("c_price"));
			jarr.put(jo);
		}
		response.getWriter().println(jarr);

	}

	
	
	// 클래스상세내용
	@RequestMapping("classForm.do")
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
	@RequestMapping("classResistBtn.do")
	public void c_Resist(HttpServletResponse response, @RequestParam HashMap<String, Object> params) throws IOException {
//		ModelAndView mav = new ModelAndView();

		
//		System.out.println(result);
//		System.out.println(params);
		
		
		
		
		if(params.get("c_number").equals("")) {
			
			String result = (String) params.get("c_number");
			result = "1";
			
			String resultStr = "{ \"result\" : " + result + "}";
			response.getWriter().println(resultStr);
		}
		else if (params.get("c_image").equals("")) {
			String result = (String) params.get("c_image");
			result = "2";
			
			String resultStr = "{ \"result\" : " + result + "}";
			response.getWriter().println(resultStr);
		}
		else if (params.get("c_content").equals("")) {
			String result = (String) params.get("c_content");
			result = "3";
			
			String resultStr = "{ \"result\" : " + result + "}";
			response.getWriter().println(resultStr);
		}
		else if (params.get("c_price").equals("")) {
			String result = (String) params.get("c_price");
			result = "4";
			
			String resultStr = "{ \"result\" : " + result + "}";
			response.getWriter().println(resultStr);
		}
		else {
			String c_location = (String) params.get("province");
			c_location += "/"+params.get("city");
			c_location += "/"+params.get("gu");
			params.put("c_location", c_location);
			
			String c_startday = (String) params.get("year");
			c_startday += "/"+params.get("month");
			c_startday += "/"+params.get("day");
			System.out.println(c_startday);
			params.put("c_startday", c_startday);
			
			
			
			cService.resistClass(params);
		
			
		
			
			
			
			
			
			

			
			
		}
		
		

		
	}

	// 클래스 등록폼
	@RequestMapping("classResist.do")
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

	// 클래스 삭제
	@RequestMapping("deleteClass.do")
	public String deleteClass(String number) {
		int result = cService.removeClass(number);
		System.out.println(result);
		return "";
	}

	// 클래스 삭제
	@ResponseBody
	@RequestMapping("deleteClassForm.do")
	public Map deleteClassForm(@RequestParam HashMap<String, Object> params) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("controller", "deleteClasssForm");
		return map;
	}

	// 수강신청현황
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
