package com.ssafy.board.model.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class Board {
	Long board_id;
	String title;
	String content;
	String username;
	Date create_date;
	String status;
	Boolean isglobal;
	Integer views;
	
	Member member;

}
