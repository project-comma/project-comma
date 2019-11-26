package service;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

public interface IMemberService {

	public boolean resistMember(HashMap<String, Object> params);

	public int removeMember(HashMap<String, Object> params);

	public int modifyMember(String id, HashMap<String, Object> params);

	public HashMap<String, Object> MemberInfo(String id);

	public ArrayList<HashMap<String, Object>> MemberList();

	public int resistTeacher(String id, HashMap<String, Object> params);

	public int resistProfileImage(String id, MultipartHttpServletRequest request);

	public File getProfileImage(String id);

	public int Login(String id, String password);

	public int modeChange(HashMap<String, Object> params);

	public boolean selectOne(String id);

	// 첨부파일 갖다주는 기능
	public File getAttachFile(String id);

	int modifyMember_s(String id, HashMap<String, Object> params);

}
