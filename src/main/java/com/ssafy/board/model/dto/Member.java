package com.ssafy.board.model.dto;

import lombok.Data;

@Data
public class Member {
	String username;
	String password;
	String email;
	String name;
	String nickname;
	String roletype;
}
