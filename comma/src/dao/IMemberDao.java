package dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.web.multipart.MultipartFile;

import model.Member;

public interface IMemberDao {

	public boolean insertMember(HashMap<String, Object> params);
	public int updateMember(HashMap<String, Object> params);
	public int updateMember_s(HashMap<String, Object> params);
	public int profileUpdate(HashMap<String, Object> params);
	public int teacherResist(HashMap<String, Object> params); 
	
	public int deleteMember(HashMap<String, Object> params);
	
	public HashMap<String, Object> selectMember(String id);
	public ArrayList<HashMap<String, Object>> listMember(HashMap<String, Object> params);
	
}
