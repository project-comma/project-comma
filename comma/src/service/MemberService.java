package service;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import dao.IMemberDao;

@Service
public class MemberService implements IMemberService{

	
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
		if(params.get("password").equals(params.get("passwordCheck"))) {
			dao.deleteMember(params);
			return 1;
		} else {
			return 2;
		}
	}

	@Override
	public int modifyMember(String id, HashMap<String, Object> params) {//회원정보 수정 학생,선생둘다
		
		
		params.put("id", id);
		dao.updateMember(params);
		
		return 0;
		
	}

	@Override
	public HashMap<String, Object> MemberInfo(String id) {//프로필
		
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
	public int resistTeacher(String id, HashMap<String, Object> params) {//선생님 등록 
		System.out.println("서비스="+params);
		System.out.println("서비스id=" + id);
		params.put("id", id);
		
		if(id != null) {
			dao.updateMember(params);
			return 0;
		}
		else {
			return 1;
		}
	}

	@Override
	public int Login(String id, String password) {//로그인
		HashMap<String, Object> result = dao.selectMember(id);
		
		if(result == null) {
			return 0;
		}
		else {
			String oPwd = (String) result.get("password");
			if(oPwd == null) {
				return 0;
			}
			else {
				if(oPwd.equals(password)) {
					
					int state = (int)result.get("state"); 
					if(state==1) {
						return 1;
					}else if(state==2) {
						return 2;
					}else if(state==3) {
						return 3;
					}
				}
				else {
					return 0;
				}
			}
		}
		
		return 0;
	}
	

	@Override
	public boolean selectOne(String id) {//회원가입 아이디 중복 체크
//		System.out.println("서비스id="+id);
		HashMap<String, Object> result = dao.selectMember(id);
//		System.out.println(result);
//		System.out.println(result.get("id"));
		if(result != null) {
			
			return true;
		}
		else {
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
}
