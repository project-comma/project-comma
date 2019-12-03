package service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.filter.OncePerRequestFilter;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import dao.IClassDao;

@Service
public class ClassService implements IClassService{

	
	@Autowired
	private IClassDao dao;
	
	
	@Override
	public int resistClass(MultipartFile file,HashMap<String, Object> params) {//요청클래스
		
		
		String path = "C:/image/"; //사진 저장할 폴더 위치
		
		File dir = new File(path);
		
		String fileName = file.getOriginalFilename();
		
		File attachFile = new File(path + fileName); //경로와 함께 파일명을 저장
		
		try {
			file.transferTo(attachFile);
			params.put("c_image", fileName);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		int result = dao.insertClass(params);
		
		
		return result;
	}

	@Override
	public int removeClass(String number) {//삭제클레스
		int result = dao.deleteClass(number);
		return 0;
	}

	@Override
	public int modifyClass(HashMap<String, Object> params) {//수정클레스
		int result = dao.updateClass(params);
		return result;
	}

	@Override
	public HashMap<String, Object> viewClass(int number) {//클레스 상세내용
		HashMap<String, Object> result = dao.selectOne(number);
	
		return result;
	}

	@Override
	public HashMap<String, Object> searchClass(HashMap<String, Object> params) {//검색클레스
		
		ArrayList<HashMap<String, Object>> list = dao.selectSearch(params);
		
		HashMap<String, Object> res = new HashMap<String, Object>();
		
		
		res.put("classList", list);
		
		System.out.println(res);
		// TODO Auto-generated method stub
		return res;
	}

	@Override
	public ArrayList<HashMap<String, Object>> allList() {//모든클래스
		ArrayList<HashMap<String, Object>> result = dao.allClass();
		return result;
	}
	
	@Override
	public ArrayList<HashMap<String, Object>> popList() {//인기클래스
		ArrayList<HashMap<String, Object>> result = dao.popClass();
		
		return result;
	}
	

	@Override
	public ArrayList<HashMap<String, Object>> historyClass(int max) {//배네에서 내가본 클래스
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public ArrayList<HashMap<String, Object>> orderClass(HashMap<String, Object> params) {//맞춤클래스
		
		return null;
	}

	@Override
	public String interClass(String number) {//학생상태의 관심클래스
		String result = dao.addLikeClass(number);
		return result;
	}

	@Override
	public int addReview(HashMap<String, Object> params) {//리뷰쓰기 
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int addLog(HashMap<String, Object> params) {//로그추가
		// TODO Auto-generated method stub
		return 0;
	}
	
	
	
	
	

}
