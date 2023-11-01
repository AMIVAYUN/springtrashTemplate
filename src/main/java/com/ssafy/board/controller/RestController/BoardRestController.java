package com.ssafy.board.controller.RestController;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.board.model.dto.Board;
import com.ssafy.board.service.BoardService;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
public class BoardRestController {
	
	private final BoardService service;
	
	@GetMapping("/boards")
	public ResponseEntity< List< Board > > getBoard(){
		return new ResponseEntity<List<Board>>( service.selectAll(), HttpStatus.OK );
	}
	
	
	@PostMapping("/board")
	public ResponseEntity< Boolean > getResult( @RequestBody Board board, HttpSession session ){
		
		if( session.getAttribute("user") == null ) {
			return (ResponseEntity<Boolean>) ResponseEntity.internalServerError();
		}
	
		int result = service.insert( board, (String) session.getAttribute("user") );
		if( result == 1 ) {
			return ResponseEntity.ok( true );
		}else {
			return ResponseEntity.ok( false );
		}
		
	}
	
}
