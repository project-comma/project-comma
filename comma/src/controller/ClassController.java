package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.maven.model.Model;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.mysql.jdbc.PreparedStatement.ParseInfo;

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
			jo.put("c_number", result.get(i).get("c_number"));
			jarr.put(jo);
		}
		response.getWriter().println(jarr);

	}

//	// 클래스폼페이지 이동
//	@RequestMapping("classList.do")
//	public ModelAndView classList() {
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName("classListForm");
//		return mav;
//
//	}
//
//	//클래스 리스트 보여주기
//	@RequestMapping("classAllList.do")
//	public void classAllList(HttpServletResponse response) throws IOException {
//		ArrayList<HashMap<String, Object>> result = cService.allList();
//
////		System.out.println(result);
//		JSONArray jarr = new JSONArray();
//		for (int i = 0; i < result.size(); i++) {
//			JSONObject jo = new JSONObject();
//			jo.put("c_name", result.get(i).get("c_name"));
//			jo.put("c_image", result.get(i).get("c_image"));
//			jo.put("c_price", result.get(i).get("c_price"));
//			jo.put("c_number", result.get(i).get("c_number"));
//			jarr.put(jo);
//		}
//		
//		response.getWriter().println(jarr);
//
//	}
	
	// 클래스 리스트
		@RequestMapping("classListForm.do")
		public ModelAndView classListForm(
				@RequestParam(required=false) String keyword,
				@RequestParam(required=false) String category
				) {
			ModelAndView mav = new ModelAndView();
			
			HashMap<String, Object> params = new HashMap<String, Object>();
			System.out.println(keyword);
			System.out.println(category);
			
			HashMap<String, Object> res = null;
			
			if(keyword==null && category==null) {
				System.out.println("둘다없어~");
				params.put("type", 0);
				res = cService.searchClass(params);
				
			}else if(keyword!=null && category==null) {
				System.out.println("키워드!");
				params.put("keyword", keyword);
				params.put("type", 1);
				res = cService.searchClass(params);
				
			}else if(keyword==null && category!=null) {
				System.out.println("카테고리!");
				params.put("type", 2);
				params.put("category", category);
				res = cService.searchClass(params);
				
			}else {
				params.put("keyword", keyword);
				params.put("category", category);
				params.put("type", 3);
				res = cService.searchClass(params);
				
			}
			
			
			mav.addAllObjects(res);
			mav.addAllObjects(params);
			
			System.out.println(res);
			System.out.println(params);
			mav.setViewName("classListForm");

			System.out.println("클래스!!");
			return mav;
		}

	
	
	// 클래스상세내용
	@RequestMapping("classForm.do")
	public ModelAndView classw(@RequestParam String number) {
//		System.out.println("클래스상네애용"+number);
		
		int inumber = Integer.parseInt(number) ;
		
		
//		int number = 3;
//		System.out.println(id);
		ModelAndView mav = new ModelAndView();
		HashMap<String, Object> result = cService.viewClass(inumber);
		System.out.println(result.get("c_startday"));
		
		String resultStr= (String) result.get("c_startday");
		String[] arr = resultStr.split("@");
		
		String resultStr2 = (String) result.get("c_starttime");
		String[] arr2 = resultStr2.split("@");
		for (int i = 0; i < arr.length; i++) {
			
			String c_startday = arr[i];
			
			
			mav.addObject("c_startday", c_startday);
			
		}
		
		for (int i = 0; i < arr2.length; i++) {
			String c_starttime = arr2[i];
			
			mav.addObject("c_starttime", c_starttime);
		}
				
		mav.addObject("c_image", result.get("c_image"));
		mav.addObject("c_content", result.get("c_content"));
		mav.addObject("c_classtime", result.get("c_classtime"));
		mav.addObject("c_price", result.get("c_price"));
		mav.addObject("c_location", result.get("c_location"));
		mav.addObject("c_member", result.get("c_member"));
		
		mav.setViewName("class");
		
		return mav;

	}

	// 클래스 등록
	@RequestMapping("classResistBtn.do")
	public void c_Resist(HttpSession session,HttpServletResponse response, @RequestBody HashMap<String, Object> params) throws IOException {
//		ModelAndView mav = new ModelAndView();

		
//		System.out.println(result);
//		System.out.println(params);
		
		String session_id = (String) session.getAttribute("id");
//		System.out.println(params);
		
		
		
		
		
				
				
				
		if(params.get("c_name").equals("")) {
			
			String result = (String) params.get("c_name");
			result = "1";
			
			String resultStr = "{ \"result\" : " + result + "}";
			response.getWriter().println(resultStr);
		}
		else if (params.get("c_category").equals("카테고리")) {
			String result = (String) params.get("c_category");
			result = "2";
			
			String resultStr = "{ \"result\" : " + result + "}";
			response.getWriter().println(resultStr);
		}
		else if (params.get("c_image").equals("")) {
			String result = (String) params.get("c_image");
			result = "3";
			
			String resultStr = "{ \"result\" : " + result + "}";
			response.getWriter().println(resultStr);
		}
		else if (params.get("c_content").equals("")) {
			String result = (String) params.get("c_content");
			result = "4";
			
			String resultStr = "{ \"result\" : " + result + "}";
			response.getWriter().println(resultStr);
		}
		else if (params.get("c_price").equals("")) {
			String result = (String) params.get("c_price");
			result = "5";
			
			String resultStr = "{ \"result\" : " + result + "}";
			response.getWriter().println(resultStr);
		}
		else {
			String c_location = (String) params.get("province");
			c_location += "/"+params.get("city");
			c_location += "/"+params.get("gu");
			params.put("c_location", c_location);
			
			params.put("id", session_id);
			
			ArrayList<String> startday = (ArrayList<String>) params.get("c_startday");
			String c_startday = "";
			for (String s : startday) {
				
				c_startday += s+"@";
			}
			params.put("c_startday", c_startday);
			
			ArrayList<String> starttime = (ArrayList<String>) params.get("c_starttime");
			String c_starttime = "";
			for (String s : starttime) {
				
				c_starttime += s+"@";
			}
			params.put("c_starttime", c_starttime);
			params.put("c_state", 2);
			
			
			
			cService.resistClass(params);
			String result = "6";
		
			
			String resultStr = "{ \"result\" : " + result + "}";
			response.getWriter().println(resultStr);
			
			
			
			
			
			

			
			
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
//	@RequestMapping("searchClass.do")
//	public void searchClass(HttpServletResponse response,@RequestParam HashMap<String, Object> params) throws IOException {
//		ModelAndView mav = new ModelAndView();
//		
//		System.out.println(params);
//		ArrayList<HashMap<String, Object>> result = cService.searchClass(params);
//		
//		JSONArray jarr = new JSONArray();
//		for (int i = 0; i < result.size(); i++) {
//			JSONObject jo = new JSONObject();
//			jo.put("c_name", result.get(i).get("c_name"));
//			jo.put("c_image", result.get(i).get("c_image"));
//			jo.put("c_price", result.get(i).get("c_price"));
//			jo.put("c_number", result.get(i).get("c_number"));
//			jarr.put(jo);
//		}
////		mav.addObject(jarr);
////		mav.setViewName("classListForm");
//		response.getWriter().println(jarr);
////		return mav;
//		
//		
//		
//	}

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
