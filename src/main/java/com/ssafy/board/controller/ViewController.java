package com.ssafy.board.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.RequiredArgsConstructor;
/*
Member Table 생성	X
MyBatis 관련 Repository 생성	X
Member에 역할(관리자, 사원) 추가	X
게시판 Table 생성	X
게시판 기능 생성	X
공지사항 기능 생성	X
권한 별 기능 제한넣기	X
게시판, 공지사항 JSP 파일 만들기	X
게시판 페이징 기능 추가 (선택과제
 * 
 * */
@Controller
public class ViewController {
	
	
	@GetMapping("/")
	public String index() {
		return "index";
	}
	
	@GetMapping("/boardPage")
	public String boardMain() {
		return "main";
	}
	
	@GetMapping("/signupPage")
	public String signUp() {
		return "sign-up";
	}
	
	@GetMapping("/loginPage")
	public String login() {
		return "login";
	}
	
	@GetMapping("/board/write")
	public String write() {
		return "write";
	}
	
	
}
