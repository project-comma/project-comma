package dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import model.Notice;

public interface INoticeDao {

	
	public int insertNotice(HashMap<String, Object> params);
	public int deleteNotice(String number);
	public int modifyNotice(HashMap<String, Object> params);
	public Notice select(int num);
	
	public ArrayList<HashMap<String, Object>> selectAll();
	public ArrayList<HashMap<String, Object>> searchList();
	
	public int getCount(HashMap<String, Object> params);
	
	public List<Notice> selectNoticePage(HashMap<String, Object> params);
}
