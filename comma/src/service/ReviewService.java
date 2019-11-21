package service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IReviewDao;

@Service
public class ReviewService implements IReviewService{

	
	@Autowired
	private IReviewDao dao;
	
	
	

	@Override
	public int writeReview(HashMap<String, Object> params) {//리뷰쓰기
		int result = dao.insertReview(params);
		System.out.println(result);
		return 0;
	}



	@Override
	public int removeReview(String number) {//리뷰제거
		int result = dao.deleteReview(number);
		System.out.println(result);
		return 0;
	}

	@Override
	public int modifyReview(HashMap<String, Object> params) {//리뷰수정
		int result = dao.updateReview(params);
		System.out.println(result);
		return 0;
	}

	@Override
	public HashMap<String, Object> viewReview(String number) {//리뷰보기
		HashMap<String, Object> result = dao.select(number);
		System.out.println(result);
		return null;
	}

	@Override
	public ArrayList<HashMap<String, Object>> searchReview(HashMap<String, Object> params) {//리뷰검색
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int addLog(HashMap<String, Object> params) {
		// TODO Auto-generated method stub
		return 0;
	}



	@Override
	public ArrayList<HashMap<String, Object>> allList() {
		ArrayList<HashMap<String, Object>> result= dao.selectList();
		System.out.println(result);
		return result;
	}
	
	
	
	

	
	
}
