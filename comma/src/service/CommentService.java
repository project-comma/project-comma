package service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.stereotype.Service;

import dao.ICommentDao;

@Service
public class CommentService implements ICommentService {

	private ICommentDao dao;
	
	@Override
	public int writeComment(HashMap<String, Object> params) {//댓글 쓰기
		int result = dao.insertComment(params);
		return 0;
	}

	@Override
	public int delComment(String number) {//댓글 지우기(학생만)
		int result = dao.deleteComment(number);
		return result;
	}

	@Override
	public int modComment(HashMap<String, Object> params) {//댓글 수정
		int result = dao.updateComment(params);
		return result;
	}

	@Override
	public ArrayList<HashMap<String, Object>> readComment(HashMap<String, Object> params) {//댓글 리스트 보여주기
		ArrayList<HashMap<String, Object>> result = dao.selectList(params);
		return result;
	}

}
