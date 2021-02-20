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
select * from club
INSERT INTO CLUB(club_num, club_name, club_detail,club_type1,club_type2,club_type3) VALUES(seq_club_num.NEXTVAL,'test','test','a','b','c');

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
book_date number(10) not null, -- 책 발행일자
book_image varchar2(200) not null, -- 책 이미지 주소
book_category1 varchar2(50), -- 분류 1
book_category2 varchar2(50), -- 분류 2
book_category3 varchar2(50) -- 분류 3
);

create sequence seq_book_num -- 책 번호 시퀀스
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;

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

CREATE TABLE recom_club(
recom_num number(10) CONSTRAINT recom_num_pk primary key, -- 추천 번호
mem_num number(10), -- 멤버 번호
recom_club1 number(10), -- 추천 클럽 번호1
recom_club2 number(10), -- 추천 클럽 번호2
recom_club3 number(10), -- 추천 클럽 번호3
FOREIGN KEY (mem_num) REFERENCES member(mem_num),
FOREIGN KEY (recom_club1) REFERENCES club(club_num),
FOREIGN KEY (recom_club2) REFERENCES club(club_num),
FOREIGN KEY (recom_club3) REFERENCES club(club_num)
);

create sequence seq_recom_num -- 댓글 번호 시퀀스
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;

insert into member(mem_num, mem_email, mem_password, mem_username, mem_nickname) 
values(seq_mem_num.NEXTVAL, 'admin','1234','관리자','관리자');

insert into book values (seq_book_num.NEXTVAL,'너와 함께라면 인생도 여행이다','이태혁','위즈덤하우스', 20150301, 'http://image.kyobobook.co.kr/images/book/large/041/l9788960866041.jpg
', '자기계발', '인간관계', '인간관계일반');

insert into book values (seq_book_num.NEXTVAL,'지면서 이기는 관계술','나태주','열림원', 20191212, 'http://image.kyobobook.co.kr/images/book/large/097/l9791170400097.jpg
', '시에세이', '한국시', '현대시');

insert into book values (seq_book_num.NEXTVAL,'현명한 투자자','벤저민 그레이엄','국일증권경제연구소', 20200526, 'http://image.kyobobook.co.kr/images/book/large/305/l9788957821305.jpg
', '경제경영', '재테크금융', '재테크');

insert into book values (seq_book_num.NEXTVAL,'앨리스 죽이기','고바야시 야스미','검은숲', 20151221, 'http://image.kyobobook.co.kr/images/book/large/184/l9788952775184.jpg
', '소설', '일본소설', '일본소설일반');

insert into book values (seq_book_num.NEXTVAL,'파리에 간 고양이','피터 게더스','MEDIA2.0', 20060723, 'http://image.kyobobook.co.kr/images/book/large/421/l9788990739421.jpg
', '시에세이', '나라별 에세이', '영미에세이');

drop table 
DROP TABLE book CASCADE CONSTRAINTS;
drop sequence seq_mem_num;

select * from book;