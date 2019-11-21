package dao;

import java.util.ArrayList;
import java.util.HashMap;

import model.Member;

public interface IMemberDao {

	public boolean insertMember(HashMap<String, Object> params);
	public int updateMember(HashMap<String, Object> params);
	public String imageUpdate(Member member);
	
	public int deleteMember(HashMap<String, Object> params);
	
	public HashMap<String, Object> selectMember(String id);
	public ArrayList<HashMap<String, Object>> listMember(HashMap<String, Object> params);
	
}
