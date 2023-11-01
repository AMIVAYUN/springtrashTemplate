package com.ssafy.board.service;

import org.springframework.stereotype.Service;

import com.ssafy.board.model.dao.MemberDao;
import com.ssafy.board.model.dto.Member;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class MemberService {
	
	private final MemberDao mdao;
	
	public boolean login(Member member) {
		Member find = mdao.selectById( member.getUsername() );
		
		if( member.getPassword().equals( find.getPassword() ) ) {
			return true;
		}
		
		return false;
	}
	
	
	public int join( Member member ) {
		member.setRoletype("user");
		return mdao.insert( member );
	}

}
