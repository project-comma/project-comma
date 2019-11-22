package controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.text.StyledEditorKit.BoldAction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import service.IMemberService;

@Controller
public class MemberController {

	@Autowired
	private IMemberService mService;

	// 선생님등록
	@RequestMapping("t_ResistForm.do")
	public String t_ResistForm() {
		return "t_ResistForm";
	}

//	선생님등록 페이지
	@RequestMapping("t_Resist.do")
	public String t_Resist(HttpSession session, @RequestParam HashMap<String, Object> params) {

		String session_id = (String) session.getAttribute("id");

		HashMap<String, Object> mId = mService.MemberInfo(session_id);

		int mState = (int) mId.get("state");

		if (session_id != null && mState == 0) {
			int result = mService.resistTeacher(session_id, params);
			System.out.println("컨트롤러에 돌아온 리턴값=" + result);
		}
		return "main";

	}

	// 학생 정보 번경 형식
	@RequestMapping("changeInfo_sForm.do")
	public ModelAndView changeInfo_sForm(HttpSession session) {
		ModelAndView mav = new ModelAndView();

		String id = (String) session.getAttribute("id");

		HashMap<String, Object> info = mService.MemberInfo(id);

		mav.addObject("info", info);

		mav.setViewName("changeInfo_sForm");
		return mav;
	}

	// 학생 정보 변경 페이지
	@RequestMapping("changeInfo_s.do")
	public ModelAndView changeInfo_s(HttpSession session, @RequestParam HashMap<String, Object> params) {

		ModelAndView mav = new ModelAndView();
		String session_id = (String) session.getAttribute("id");

		HashMap<String, Object> mId = mService.MemberInfo(session_id);
		int mState = (int) mId.get("state");

		if (params.get("password").equals((params).get("passwordCheck")) && session_id != null && mState == 1) {
			int result = mService.modifyMember(session_id, params);
			System.out.println("컨트롤러에 리턴된값=" + result);
			mav.setViewName("main");
			return mav;
		} else {
			mav.setViewName("changeInfo_sForm");
			return mav;
		}
	}

	// 선생님 정보 변경요청
	@RequestMapping("changeInfo_tForm.do")
	public ModelAndView changeInfo_tForm(HttpSession session) {
		ModelAndView mav = new ModelAndView();

		String id = (String) session.getAttribute("id");

		HashMap<String, Object> info = mService.MemberInfo(id);

		mav.addObject("info", info);

		mav.setViewName("changeInfo_sForm");
		mav.setViewName("changeInfo_tForm");
		return mav;
	}

	// 선생님 정보 변경 페이지
	@RequestMapping("changeInfo_t.do")
	public ModelAndView changeInfo_t(HttpSession session, @RequestParam HashMap<String, Object> params) {

		ModelAndView mav = new ModelAndView();
		String session_id = (String) session.getAttribute("id");

		HashMap<String, Object> mId = mService.MemberInfo(session_id);
		int mState = (int) mId.get("state");

		if (session_id != null && mState == 2) {
			int result = mService.modifyMember(session_id, params);
			System.out.println("컨트롤러에 리턴된값=" + result);
			mav.setViewName("main");
			return mav;

		} else {
			mav.setViewName("changeInfo_tForm");
			return mav;

		}

	}

	// 마이페이지 학생용, 선생님용, 관리자용(분기)
	@RequestMapping("mypage.do")
	public ModelAndView mypage(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		int state = (int) session.getAttribute("state");

		if (state == 1) {
			mav.setViewName("mypage_s");
		} else if (state == 2) {
			mav.setViewName("mypage_t");
		} else if (state == 3) {
			mav.setViewName("admin");
		}

		return mav;
	}

	// 고객센터 폼
	@RequestMapping("centroForm.do")
	public String centorForm() {
		return "centro";
	}

	// 고객센터
	@RequestMapping("centro.do")
	public ModelAndView centro() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("centro");
		return mav;
	}

	@RequestMapping("adminForm.do")
	public String adminForm() {
		return "";
	}

	// 관리자 페이지
	@RequestMapping("admin.do")
	public ModelAndView admin() {
		ModelAndView mav = new ModelAndView();

		return mav;
	}

	// 회원가입
	// 회원가입
	@RequestMapping("join.do")
	public void join(HttpServletResponse response, @RequestParam HashMap<String, Object> params) throws IOException {

		boolean result = mService.resistMember(params);
		System.out.println("컨트롤러=" + result);

		String resultStr = "{ \"result\" : " + result + "}";
		response.getWriter().println(resultStr);

	}

	// 로그인
	@RequestMapping("login.do")
	public String login(HttpSession session, String id, String password) {
//		System.out.println(mService.Login(id, password));
//		System.out.println(id+"ddd"+password);

		int state = mService.Login(id, password);
		if (state != 0) {
			System.out.println(state);
			session.setAttribute("id", id);
			session.setAttribute("state", state);
//			session.setAttribute("password", password);

			return "main";

		} else {

			return "main";
		}

	}

	// 로그아웃
	@RequestMapping("logout.do")
	public String logout(HttpSession session) {
		session.removeAttribute("id");
		return "main";
	}

	// 아이디 체크
	@RequestMapping("idCheck.do")
	public void idcheck(String id, HttpServletResponse resp) throws IOException {
//		System.out.println("컨트롤러id=" + id);
		Boolean result = mService.selectOne(id);
		System.out.println(result);
		String resultStr = "{ \"result\" : " + result + "}";
		resp.getWriter().println(resultStr);

	}

	// 로그인네이버
	@RequestMapping("loginNaver.do")
	public ModelAndView loginNaver(@RequestParam HashMap<String, Object> params) {

		ModelAndView mav = new ModelAndView();

		return mav;

	}

	// 구글 로그인
	@RequestMapping("loginGoogle.do")
	public ModelAndView loginGoogle(@RequestParam HashMap<String, Object> params) {

		ModelAndView mav = new ModelAndView();

		return mav;

	}

	// 회원탈퇴
	@ResponseBody
	@RequestMapping("dropMember.do")
	public Map dropMember(@RequestParam HashMap<String, Object> params) {

		Map<String, Object> map = new HashMap<String, Object>();

		/* map.put("key", "leeyesol"); */
		return map;
	}

	// 선생님 거부
	@RequestMapping("rejectT.do")
	public ModelAndView rejectT(@RequestParam HashMap<String, Object> params) {
		ModelAndView mav = new ModelAndView();

		return mav;

	}

	// 선생님 수락
	@ResponseBody
	@RequestMapping("acceptT.do")
	public Map acceptT(@RequestParam HashMap<String, Object> params) {
		Map<String, Object> map = new HashMap<String, Object>();
	
//		map.put("controller", "t_accept");
		return map;

	}

	// 프로필사진 갖고오는 메소드
	@RequestMapping("profile.do")
	public ModelAndView profile(String id) {
		ModelAndView mav = new ModelAndView();
		File result = mService.getAttachFile(id);
		System.out.println(result);
		mav.addObject(mav);
		return mav;
	}

}
