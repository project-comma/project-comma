package controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import service.INoticeService;



@Controller
public class NoticeController {

	@Autowired
	private INoticeService nService;
	
	
	@RequestMapping("noticeList.do")//공지리스트
	public ModelAndView noticeList() {
		
		
		ModelAndView mav = new ModelAndView();
		ArrayList<HashMap<String, Object>> result = nService.read();
		System.out.println(result);
		
		return mav;
	}
	
	//공지사항 상세정보
	@RequestMapping("notice.do")
	public ModelAndView notice() {

		ModelAndView mav = new ModelAndView();
		return mav;
	}
		
	
	@RequestMapping("notice_write.do")//공지사항쓰기
	public Map notice_write(@RequestParam HashMap<String, Object> params) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("name", "yesol");
		System.out.println("controller");
		return map;
	}
	
	@RequestMapping("notice_remove.do")//공지사항제거
	public ModelAndView notice_remove(String number) {
		ModelAndView mav = new ModelAndView();
		
		int result = nService.delete(number);
		System.out.println(result);
		
		return mav;
	}
	
	@RequestMapping("notice_modify.do")
	public ModelAndView notice_modify(@RequestParam HashMap<String, Object> params) {
		ModelAndView mav = new ModelAndView();
		int result = nService.modify(params);
		System.out.println(result);
		return mav;
	}
	
}
