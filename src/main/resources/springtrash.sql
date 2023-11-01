create database if not exists springtrash;
use springtrash;
-- drop table board;
-- drop table member;
 create table if not exists member(
 	username varchar(20) primary key,
     password varchar(20),
     email varchar( 30 ),
 	name varchar( 10 ),
 	nickname varchar( 20 ),
    roletype enum('user','admin')
 );
create table if not exists board(
	board_id bigint auto_increment primary key,
    username varchar( 20 ),
    title varchar( 20 ),
    content varchar( 100 ),
    create_date timestamp default current_timestamp,
    isglobal boolean,
    status enum('active','deactive'),
    views int default 0,
    constraint foreign key( username ) references member( username )
    
);
insert into member( username, password, email, name, nickname, roletype ) values ( 'ssafy','ssafy','ssafy@ssafy.com','test','testMan','admin');
insert into board( username, title, content, create_date, isglobal, status ) values ('ssafy','hi test','asdfasfsadfasdfasdfsad',now(),false,'active');
insert into board( username, title, content, create_date, isglobal, status ) values ('ssafy','hi test','asdfasfsadfasdfasdfsad',now(),false,'active');
insert into board( username, title, content, create_date, isglobal, status ) values ('ssafy','hi test','asdfasfsadfasdfasdfsad',now(),false,'active');
insert into board( username, title, content, create_date, isglobal, status ) values ('ssafy','hi test','asdfasfsadfasdfasdfsad',now(),false,'active');
insert into board( username, title, content, create_date, isglobal, status ) values ('ssafy','hi test','asdfasfsadfasdfasdfsad',now(),false,'active');
insert into board( username, title, content, create_date, isglobal, status ) values ('ssafy','hi test','asdfasfsadfasdfasdfsad',now(),false,'active');
insert into board( username, title, content, create_date, isglobal, status ) values ('ssafy','hi test','asdfasfsadfasdfasdfsad',now(),false,'active');



    