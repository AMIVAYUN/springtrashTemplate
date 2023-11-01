package com.ssafy.board.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

import com.ssafy.board.model.dao.MemberDao;


@Configuration
@ComponentScan(basePackages = "com.ssafy.*")
@MapperScan( basePackageClasses = MemberDao.class )
public class ApplicationConfig {

	
}
