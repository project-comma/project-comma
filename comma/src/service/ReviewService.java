package service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

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



	@Override
	public int writeP_Review(String id, HashMap<String, Object> params, MultipartFile file) {
		String path = "C:/image/";
		String fileName = file.getOriginalFilename();
		String content = (String) params.get("content");
		params.put("id", id);

		// content 비었을경우 return1
		if (content == null || content.equals("")) {
			return 1;
		}
		// file 값이 비었을 경우 return2
		else if (fileName == null || fileName.equals("")) {
			return 2;
		}
		
		// 모든 값이 들어있고 DBinsert 성공시 return0
		else {
			params.put("image", fileName);
			params.put("content", content);
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

			int result = dao.insertReview(params);
			return 0;
	}
	
	
	}
	

	
	
}
