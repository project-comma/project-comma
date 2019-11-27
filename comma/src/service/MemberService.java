package service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import dao.IMemberDao;

@Service
public class MemberService implements IMemberService {

	@Autowired
	private IMemberDao dao;

	@Override
	public boolean resistMember(HashMap<String, Object> params) {// 회원가입
		// 패스워드 체크 및 데이터들 DB에 저장

		if (params.get("password").equals(params.get("passwordCheck"))) {

			boolean result = dao.insertMember(params);
			System.out.println("서비스=" + result);
			return true;
		} else {

			return false;
		}

	}

	@Override
	public int removeMember(HashMap<String, Object> params) {
		if (params.get("password").equals(params.get("passwordCheck"))) {
			dao.deleteMember(params);
			return 1;
		} else {
			return 2;
		}
	}

	@Override
	public int modifyMember(String id, HashMap<String, Object> params) {// 회원정보 수정 학생,선생둘다

		params.put("id", id);
		dao.updateMember(params);

		return 0;

	}

	@Override
	public HashMap<String, Object> MemberInfo(String id) {// 프로필

		HashMap<String, Object> result = dao.selectMember(id);
//		System.out.println(result.toString());

		return result;
	}

	@Override
	public ArrayList<HashMap<String, Object>> MemberList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int resistTeacher(String id, HashMap<String, Object> params) {// 선생님 등록

		System.out.println("서비스=" + params);
		System.out.println("서비스id=" + id);

		String t_career = "";
		String t_education = "";
		String t_license = "";

		try {

			ArrayList<String> career = (ArrayList<String>) params.get("t_careerObject");
			for (String s : career) {
				if (!t_career.equals("")) {
					t_career += "-";
				}
				t_career += s;
				System.out.println(s);
			}
		} catch (ClassCastException e) {
			t_career = (String) params.get("t_careerObject");
		}

		try {
			ArrayList<String> edu = (ArrayList<String>) params.get("t_educationObject");

			for (String s : edu) {

				if (!t_education.equals("")) {
					t_education += "-";
				}
				t_education += s;
			}

		} catch (ClassCastException e) {
			t_education = (String) params.get("t_educationObject");
			// TODO: handle exception
		}

		try {
			ArrayList<String> lic = (ArrayList<String>) params.get("t_licenseObject");

			for (String s : lic) {

				if (!t_license.equals("")) {
					t_license += "-";
				}

				t_license += s;
			}

		} catch (ClassCastException e) {
			t_license = (String) params.get("t_licenseObject");
			// TODO: handle exception
		}
		params.put("id", id);
		if (!t_career.equals(""))
			params.put("t_career", t_career);
		if (!t_education.equals(""))
			params.put("t_education", t_education);
		if (!t_license.equals(""))
			params.put("t_license", t_license);

		if (id != null) {
			dao.teacherResist(params);
			return 0;
		} else {
			return 1;
		}
	}

	public int resistProfileImage(String id, MultipartHttpServletRequest request) {

		Iterator<String> iter = request.getFileNames();

		HashMap<String, Object> params = new HashMap<String, Object>();

		params.put("id", id);
		String path = "C:/image/";

		MultipartFile prof = null;
		if (iter.hasNext()) {

			prof = request.getFile(iter.next());

		}

		File dir = new File(path);

		String fileName = prof.getOriginalFilename();

		if (fileName == null || fileName.equals("")) {
			System.out.println("이미지가 없어!!!");
			return 0;
		}
		File attachFile = new File(path + fileName);

		System.out.println(attachFile.getAbsolutePath());

		try {
			prof.transferTo(attachFile);

			params.put("image", fileName);

		} catch (Exception e) {
			// TODO: handle exception
		}

		dao.profileUpdate(params);

		return 1;
	}

	public File getProfileImage(String id, HttpServletRequest request) {

		HashMap<String, Object> mem = dao.selectMember(id);

		String fileName = (String) mem.get("image");

		if (fileName == null) {

			System.out.println("프로필이 없어 ㅠㅠ");
			String img = request.getRealPath("/img/");
			return new File(img + "test2.jpg");
		}

		String path = "C:/image/";

		return new File(path + fileName);
	}

	@Override
	public int Login(String id, String password) {// 로그인
		HashMap<String, Object> result = dao.selectMember(id);

		if (result == null) {
			return 0;
		} else {
			String oPwd = (String) result.get("password");
			if (oPwd == null) {
				return 0;
			} else {
				if (oPwd.equals(password)) {

					int state = (int) result.get("state");
					if (state == 1) {
						return 1;
					} else if (state == 2) {
						return 2;
					} else if (state == 3) {
						return 3;
					}
				} else {
					return 0;
				}
			}
		}

		return 0;
	}

	@Override
	public boolean selectOne(String id) {// 회원가입 아이디 중복 체크
//		System.out.println("서비스id="+id);
		HashMap<String, Object> result = dao.selectMember(id);
//		System.out.println(result);
//		System.out.println(result.get("id"));
		if (result != null) {

			return true;
		} else {
			return false;
		}

	}

	@Override
	public int modeChange(HashMap<String, Object> params) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public File getAttachFile(String id) {

		HashMap<String, Object> result = dao.selectMember(id);
		String fileName = (String) result.get("image");
		String path = "C:/image/";
		return new File(path + fileName);

	}

	@Override
	public int modifyMember_s(String id, HashMap<String, Object> params, MultipartFile file) {
		System.out.println(" modifyMember_s_service");
		params.put("id", id);
		String pw = (String) params.get("password");
		System.out.println("원래비번" + pw);
		if (pw.equals("") || pw == null) {
			HashMap<String, Object> result = dao.selectMember(id);
			String password = (String) result.get("password");
			System.out.println("없어서원래비번" + password);
			params.put("password", password);
		}

		String path = "C:/image/";
		String fileName = file.getOriginalFilename();
//		System.out.println(fileName);
		
		params.put("image", fileName);
		if (fileName == null || fileName.equals("")) {
//			System.out.println("modifyMember_s-이미지 없다");
			return 0;
		}
		File attachFile = new File(path + fileName);

		try {
			file.transferTo(attachFile);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		dao.updateMember_s(params);

//		System.out.println("modifyMember_s"+params);
//		System.out.println("modifyMember_s"+attachFile.getAbsolutePath());	

		return 0;
	}
}
