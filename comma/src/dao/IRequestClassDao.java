package dao;

import java.util.ArrayList;
import java.util.HashMap;

public interface IRequestClassDao {

	public int insertRequest(HashMap<String, Object> params);
	public int updateRequest(HashMap<String, Object> params);
	public int deleteRequest(int num);
	
	public HashMap<String, Object> select(String id);
	public ArrayList<HashMap<String, Object>> selectList(HashMap<String, Object> params);
}
