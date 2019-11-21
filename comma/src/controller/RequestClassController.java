package controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import service.IRequestClassService;
import util.Commons;

@Controller
public class RequestClassController {

	
	
	@Autowired
	private IRequestClassService rService;

	// 클래스 요청 등록
	@RequestMapping("classReqResist.do")
	public ModelAndView classReqResist(@RequestParam HashMap<String, Object> params) {
		ModelAndView mav = new ModelAndView();
		
		int res = rService.resistRequest(params);
		
		if(res==Commons.SUCCESS_RESIST) {
			
		}else if(res==Commons.FAIL_RESIST) {
			
		}else if(res==Commons.ID_OVERLAP) {
			
		}
		mav.setViewName("classReqResist");
		return mav;
	}

	// 클래스요청 리스트
	@RequestMapping("classReqList.do")
	public ModelAndView classReqList() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("classReqList");

		
		System.out.println("리퀘스트!!");
		return mav;
	}

	// 클래스요청상세내용
	@RequestMapping("classReq.do")
	public ModelAndView classReq() {

		ModelAndView mav = new ModelAndView();

		
		mav.setViewName("classReq");
		return mav;
	}

	// 선생님제안
	@RequestMapping("Suggest.do")
	public ModelAndView cl_req_t(@RequestParam HashMap<String, Object> params) {

		ModelAndView mav = new ModelAndView();

		return mav;
	}

	// 클래스 요청 등록 형식
	@RequestMapping("classReqResistForm.do")
	public ModelAndView cr_ResistForm(@RequestParam HashMap<String, Object> params) {
		ModelAndView mav = new ModelAndView();
		
		
		mav.setViewName("classReqResist");

		return mav;
	}

	// 클래스요청삭제
	@RequestMapping("deleteReq.do")
	public Map deleteReq(@RequestParam HashMap<String, Object> params) {
		
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("name", "victolee");
		
		//JSONResult
		//return JSONResult.success(result);
		
		 return map;
		

//		return mav;

	}

	// 클래스요청 검색
	@RequestMapping("searchReq.do")
	public ModelAndView searchReq(@RequestParam HashMap<String, Object> params) {
		ModelAndView mav = new ModelAndView();

		return mav;
	}
}
