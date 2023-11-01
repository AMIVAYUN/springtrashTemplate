package com.ssafy.board.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ssafy.board.model.dao.BoardDao;
import com.ssafy.board.model.dto.Board;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class BoardService {

	private final BoardDao bdao;
	
	public List<Board> selectAll(){
		return bdao.selectAll();
	}
	
	public int insert( Board board, String username ) {
		board.setIsglobal( false );
		board.setUsername( username );
		board.setStatus("active");
		return bdao.insert(board);
	}
}
