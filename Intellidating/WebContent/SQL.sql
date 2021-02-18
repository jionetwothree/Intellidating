CREATE TABLE club(
club_num number(10) CONSTRAINT club_num_pk primary key, -- 번호 시퀀스 seq_club_num.NEXTVAR
club_name varchar2(50) not null, -- 모임 이름
club_mem_cnt number(3) default 0, -- 모임 가입 인원
club_detail varchar2(500), -- 모임 설명
club_type1 varchar2(500) not null, -- 모임 성격
club_type2 varchar2(500) not null,
club_type3 varchar2(500) not null,
CONSTRAINT UQ_club_name unique (club_name)
);

create sequence seq_club_num -- 모임 번호 시퀀스
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;

CREATE TABLE book(
book_num number(10) CONSTRAINT book_num_pk primary key, -- 책 번호 시퀀스 seq_book_num.NEXTVAR
book_name varchar2(200) not null, -- 책 이름
book_author varchar2(200) not null, -- 책 저자
book_publisher varchar2(200) not null, -- 책 출판사
book_date number(10), -- 책 발행일자
book_image varchar2(200), -- 책 이미지 주소
book_category1 varchar2(50), -- 분류 1
book_category2 varchar2(50), -- 분류 2
book_category3 varchar2(50) -- 분류 3
);

CREATE TABLE member(
mem_num number(10) CONSTRAINT mem_num_pk primary key, -- 번호 시퀀스 seq_mem_num.NEXTVAR
mem_email varchar2(100) not null, -- 이메일 
mem_password varchar2(32) not null, -- 비밀번호
mem_username varchar2(20) not null, -- 이름
mem_nickname varchar2(50) not null, -- 닉네임
mem_registerday date default sysdate, -- 가입일자
mem_club1 number(10), -- 가입한 모임 1
mem_club2 number(10), -- 가입한 모임 2 
mem_club3 number(10), -- 가입한 모임 3
CONSTRAINT FK_mem_club1 FOREIGN KEY (mem_club1) REFERENCES club(club_num),
CONSTRAINT FK_mem_club2 FOREIGN KEY (mem_club2) REFERENCES club(club_num),
CONSTRAINT FK_mem_club3 FOREIGN KEY (mem_club3) REFERENCES club(club_num),
CONSTRAINT UQ_mem_email unique (mem_email),
CONSTRAINT UQ_mem_nick unique (mem_nickname)
);

create sequence seq_mem_num -- 멤버 번호 시퀀스
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;

CREATE TABLE choice(
choice_num number(10) CONSTRAINT choice_num_pk primary key,
mem_num number(10) NOT NULL, -- 멤버 번호 외래키
choice1 number(10) NOT NULL, -- 선택한 책 1
choice2 number(10) NOT NULL, -- 선택한 책 2
choice3 number(10) NOT NULL, -- 선택한 책 3
choice4 number(10) NOT NULL, -- 선택한 책 4
choice5 number(10) NOT NULL, -- 선택한 책 5
CONSTRAINT FK_mem_num FOREIGN KEY (mem_num) REFERENCES member(mem_num),
CONSTRAINT FK_choice1 FOREIGN KEY (choice1) REFERENCES book(book_num),
CONSTRAINT FK_choice2 FOREIGN KEY (choice2) REFERENCES book(book_num),
CONSTRAINT FK_choice3 FOREIGN KEY (choice3) REFERENCES book(book_num),
CONSTRAINT FK_choice4 FOREIGN KEY (choice4) REFERENCES book(book_num),
CONSTRAINT FK_choice5 FOREIGN KEY (choice5) REFERENCES book(book_num)
);

CREATE TABLE comments(
comment_num number(10) CONSTRAINT comment_num_pk primary key, -- 댓글 번호
book_num number(10), -- 책 번호
mem_num number(10),-- 작성자 번호
content varchar2(100) not null, -- 내용
comment_date date default sysdate, -- 작성일자
FOREIGN KEY (book_num) REFERENCES book(book_num),
FOREIGN KEY (mem_num) REFERENCES member(mem_num)
);

create sequence seq_co_num -- 댓글 번호 시퀀스
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;

insert into member(mem_num, mem_email, mem_password, mem_username, mem_nickname) 
values(seq_mem_num.NEXTVAL, 'admin','1234','관리자','관리자');

drop table comments;
select * from comments;