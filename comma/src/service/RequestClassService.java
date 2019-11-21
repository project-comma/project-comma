package service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IRequestClassDao;

@Service
public class RequestClassService implements IRequestClassService{

	
	@Autowired
	private IRequestClassDao dao;
	
	@Override
	public int resistRequest(HashMap<String, Object> params) {//클래스 요청
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int removeRequest(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int modifyRequest(HashMap<String, Object> params) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public HashMap<String, Object> viewRequest(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<HashMap<String, Object>> searchRequest(HashMap<String, Object> params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int addLog(HashMap<String, Object> params) {
		// TODO Auto-generated method stub
		return 0;
	}

}
