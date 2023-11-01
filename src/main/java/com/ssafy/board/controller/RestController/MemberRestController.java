package com.ssafy.board.controller.RestController;

import javax.servlet.http.HttpSession;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.board.model.dto.Member;
import com.ssafy.board.service.MemberService;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
public class MemberRestController {
	
	private final MemberService service;
	
	@PostMapping
	public ResponseEntity login( HttpSession session, Member member ) {
		boolean result = service.login( member );
		return result ? ResponseEntity.ok( true ) : ResponseEntity.ok( false );
	}
}
