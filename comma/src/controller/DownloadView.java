package controller;

import java.io.File;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.view.AbstractView;


public class DownloadView extends AbstractView{

	private File file;

	public DownloadView(File file) {
		super();
		setContentType("application/download; UTF-8");
		this.file = file;
	}

	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
	}

	
	
}
