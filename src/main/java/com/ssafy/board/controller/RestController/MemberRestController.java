package com.ssafy.board.controller.RestController;

import javax.servlet.http.HttpSession;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.board.model.dto.Member;
import com.ssafy.board.service.MemberService;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
@RequestMapping("/user")
public class MemberRestController {
	
	private final MemberService service;
	
	@PostMapping("/login")
	public ResponseEntity login( HttpSession session, @RequestBody Member member ) {
		boolean result = service.login( member );
		session.setAttribute( "user", member.getUsername() );
		return result ? ResponseEntity.ok( true ) : ResponseEntity.ok( false );
	}
	
	@PostMapping("/join")
	public ResponseEntity< Boolean > join( @RequestBody Member member ){
		System.out.println( member.toString() );
		int res = service.join( member );
		return ResponseEntity.ok( res == 1 );
	}
	
	
}
