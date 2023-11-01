package com.ssafy.board.model.dao;

import org.apache.ibatis.annotations.Mapper;

import com.ssafy.board.model.dto.Member;

@Mapper
public interface MemberDao {
	
	int insert( Member member );
}
