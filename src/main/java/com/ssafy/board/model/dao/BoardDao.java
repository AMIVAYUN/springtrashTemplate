package com.ssafy.board.model.dao;

import org.apache.ibatis.annotations.Mapper;

import com.ssafy.board.model.dto.Board;

@Mapper
public interface BoardDao {
	
	int insert( Board board );
	
}
