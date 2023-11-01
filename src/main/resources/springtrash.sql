use springtrash;
-- drop table board;
-- create table member(
-- 	username varchar(20) primary key,
--     password varchar(20),
--     email varchar( 30 ),
-- 	name varchar( 10 ),
-- 	nickname varchar( 20 )
-- );
create table board(
	board_id bigint auto_increment primary key,
    username varchar( 20 ),
    title varchar( 20 ),
    content varchar( 100 ),
    create_date timestamp default current_timestamp,
    status enum('active','deactive'),
    constraint foreign key( username ) references member( username )
    
);



    