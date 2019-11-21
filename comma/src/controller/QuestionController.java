package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import service.IQuestionService;

@Controller
public class QuestionController {

	@Autowired
	private IQuestionService qService;
	
	@RequestMapping("questionList.do")//질문리스트
	public void questionList(HttpServletResponse response) throws IOException {
		
		
		
		ArrayList<HashMap<String, Object>> result = qService.read();
//		System.out.println(result);
		JSONArray jarr = new JSONArray();
		for (int i = 0; i < result.size(); i++) {
			JSONObject jo = new JSONObject();
			jo.put("id", result.get(i).get("id"));
			jo.put("title", result.get(i).get("title"));
			jo.put("date", result.get(i).get("date"));
			jarr.put(jo);
		}
		
		response.getWriter().println(jarr);
		
		
		
	}
	
	
	@RequestMapping("question.do")
	public ModelAndView ask() {

		ModelAndView mav = new ModelAndView();
		return mav;
	}
		
	
	@RequestMapping("question_write.do")//질문쓰기
	public ModelAndView question_write(@RequestParam HashMap<String, Object> params) {
		ModelAndView mav = new ModelAndView();
		int result = qService.write(params);
		System.out.println(result);
		
		return mav;
	}
	
	@RequestMapping("question_remove.do")//질문제거
	public ModelAndView question_remove(String num) {
		ModelAndView mav = new ModelAndView();
		int result = qService.delete(num);
		System.out.println(result);
		
		return mav;
	}
	
	@RequestMapping("question_modify.do")//질문수정
	public ModelAndView qustion_modify(@RequestParam HashMap<String, Object> params) {
		ModelAndView mav = new ModelAndView();
		int result = qService.modify(params);
		System.out.println(result);
		return mav;
	}
	
}
