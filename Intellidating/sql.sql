CREATE TABLE member(
mem_num number(10) CONSTRAINT mem_num_pk primary key, -- 번호 시퀀스 seq_mem_num.NEXTVAR
mem_email varchar2(100) CONSTRAINT mem_email_nn not null, -- 이메일 
mem_password varchar2(32) CONSTRAINT mem_pw_nn not null, -- 비밀번호
mem_username varchar2(20) CONSTRAINT mem_name_nn not null, -- 이름
mem_nickname varchar2(50) CONSTRAINT mem_nick_nn not null, -- 닉네임
mem_registerday date default sysdate, -- 가입일자
mem_age varchar(10), -- 나이
mem_sex char(1), -- 성별
mem_club1 number(10), -- 가입한 모임 1
mem_club2 number(10), -- 가입한 모임 2 
mem_club3 number(10), -- 가입한 모임 3
CONSTRAINT FK_mem_club1 FOREIGN KEY (mem_club1) REFERENCES club(club_num),
CONSTRAINT FK_mem_club2 FOREIGN KEY (mem_club2) REFERENCES club(club_num),
CONSTRAINT FK_mem_club3 FOREIGN KEY (mem_club3) REFERENCES club(club_num),
CONSTRAINT UQ_mem_email unique (mem_email),
CONSTRAINT UQ_mem_nick unique (mem_nickname),
CONSTRAINT CK_mem_age check (mem_age in('10대','20대','30대','40대','50대 이상')),
CONSTRAINT CK_mem_sex check (mem_sex in('M','F'))
);

create sequence seq_mem_num -- 멤버 번호 시퀀스
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;

CREATE TABLE choice(
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

CREATE TABLE club(
club_num number(10) CONSTRAINT club_num_pk primary key, -- 번호 시퀀스 seq_club_num.NEXTVAR
club_name varchar2(50) CONSTRAINT club_name_nn not null, -- 모임 이름
club_mem_cnt number(3) default 0, -- 모임 가입 인원
club_detail varchar2(500), -- 모임 설명
club_type varchar2(500) CONSTRAINT club_type_nn not null, -- 모임 성격
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
book_name varchar2(200) CONSTRAINT book_name_nn not null, -- 책 이름
book_author varchar2(200) CONSTRAINT book_author_nn not null, -- 책 저자
book_publisher varchar2(200) CONSTRAINT book_publisher_nn not null, -- 책 출판사
book_year number(5), -- 책 발행년도
book_category1 varchar2(20), -- 분류 1
book_category2 varchar2(20), -- 분류 2
book_category3 varchar2(20), -- 분류 3
book_category4 varchar2(20) -- 분류 4
);

create sequence seq_book_num -- 책 번호 시퀀스
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;

insert into member(mem_num, mem_email, mem_password, mem_username, mem_nickname) 
values(seq_mem_num.NEXTVAL, 'admin','1234','관리자','관리자');

-- drop table member;
select * from member;