package service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.web.multipart.MultipartFile;

public interface IReviewService {

	
	public int writeReview(HashMap<String, Object> params);
	
	public int removeReview(String number);
	public int modifyReview(HashMap<String, Object> params);
	public HashMap<String, Object> viewReview(String number);
	public ArrayList<HashMap<String, Object>> searchReview(HashMap<String, Object> params);
	public int addLog(HashMap<String, Object> params);
	
	public ArrayList<HashMap<String, Object>> allList();

	public int writeP_Review(String session_id, HashMap<String, Object> params, MultipartFile file);
}
