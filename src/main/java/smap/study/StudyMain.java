package smap.study;

import java.util.HashMap;


import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import smap.Action;

@Service("studystudyMain")
public class StudyMain implements Action{

	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		System.out.println("study/studymain execute() 실행");
		return null;
	}

}
