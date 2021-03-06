DROP TABLE choice; -- 드랍
DROP TABLE CLUB; --드랍
DROP TABLE book; -- 드랍
DROP TABLE member; -- 드랍
DROP TABLE comments; -- 드랍
DROP TABLE print_book; --드랍
DROP TABLE recommendation; --드랍


drop sequence seq_club_num; --드랍
drop sequence seq_mem_num; --드랍
drop sequence seq_book_num; --드랍
drop sequence seq_choice_num; --드랍
drop sequence seq_co_num; --드랍 
drop sequence seq_recom_num; --드랍


DROP TABLE print_book;
DROP TABLE choice;
DROP TABLE recommendation;
DROP TABLE comments;
DROP TABLE member;
DROP TABLE book;
DROP TABLE club;
DROP sequence seq_club_num;
DROP sequence seq_book_num;
DROP sequence seq_mem_num;
DROP sequence seq_choice_num;
DROP sequence seq_co_num;
DROP sequence seq_recom_num;

delete from member;
delete from print_book;

CREATE TABLE club(
club_num number(10) CONSTRAINT club_num_pk primary key, -- 번호 시퀀스 seq_club_num.NEXTVAR
club_name varchar2(50) not null, -- 모임 이름
club_image varchar2(200) not null, -- 모임 이미지
club_mem_cnt number(3) default 0, -- 모임 가입 인원
club_detail varchar2(500), -- 모임 설명
club_type1 varchar2(500), -- 모임 성격
club_type2 varchar2(500),
club_type3 varchar2(500),
CONSTRAINT UQ_club_name unique (club_name)
);

select * from club;

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
start with 101
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;


CREATE TABLE choice(
choice_num number(10) CONSTRAINT choice_num_pk primary key, -- 시퀀스
mem_num number(10) NOT NULL, -- 멤버 번호 외래키
choice1 varchar2(50) NOT NULL, -- 선택한 책 1
choice2 varchar2(50) NOT NULL, -- 선택한 책 2
choice3 varchar2(50) NOT NULL, -- 선택한 책 3
choice4 varchar2(50) NOT NULL, -- 선택한 책 4
choice5 varchar2(50) NOT NULL, -- 선택한 책 5
CONSTRAINT FK_mem_num FOREIGN KEY (mem_num) REFERENCES member(mem_num)
);

create sequence seq_choice_num -- 선택 번호 시퀀스
start with 101
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;


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

CREATE TABLE recommendation(
recom_num number(10) CONSTRAINT recom_num_pk primary key, -- 추천 번호
mem_num number(10) UNIQUE, -- 멤버 번호
recom_club1 number(10), -- 추천 클럽 번호1
recom_club2 number(10), -- 추천 클럽 번호2
recom_club3 number(10), -- 추천 클럽 번호3
recom_book1 number(10), -- 추천 도서 번호1
recom_book2 number(10), -- 추천 도서 번호2
recom_book3 number(10), -- 추천 도서 번호3
FOREIGN KEY (mem_num) REFERENCES member(mem_num),
FOREIGN KEY (recom_club1) REFERENCES club(club_num),
FOREIGN KEY (recom_club2) REFERENCES club(club_num),
FOREIGN KEY (recom_club3) REFERENCES club(club_num),
FOREIGN KEY (recom_book1) REFERENCES book(book_num),
FOREIGN KEY (recom_book2) REFERENCES book(book_num),
FOREIGN KEY (recom_book3) REFERENCES book(book_num)
);

create sequence seq_recom_num -- 추천 번호 시퀀스
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;



CREATE TABLE print_book(
select_num number(10) CONSTRAINT select_num_pk primary key,
book_num number(10) not null,
book_name varchar2(200) not null,
book_image varchar2(200) not null,
book_category3 varchar2(50) not null
);

create table CHAT (
	chatID number,
	chatName VARCHAR(20),
	chatContent VARCHAR(100),
	chatTime date,
	constraint CHAT_ID_pk primary key(chatID)
);

select * from CHAT;
delete from chat;

INSERT INTO CHAT VALUES (chatid.nextval, 'a', 'b', sysdate)

-시퀀스 만들기- 

create sequence chatid
start with 1
increment by 1

select * from print_book;
select * from PRINT_BOOK;

insert into member(mem_num, mem_email, mem_password, mem_username, mem_nickname) 
values(seq_mem_num.NEXTVAL, 'admin@naver.com','1234','관리자','관리자');

INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (1,8,'우리는 사랑일까','http://image.kyobobook.co.kr/images/book/large/373/l9788956601373.jpg','SF과학소설');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (2,14,'파피용','http://image.kyobobook.co.kr/images/book/large/741/l9788932907741.jpg','SF과학소설');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (3,16,'관찰의 힘','http://image.kyobobook.co.kr/images/book/large/127/l9791189352127.jpg','경영');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (4,26,'세상의 모든 전략은 전쟁에서 탄생했다','http://image.kyobobook.co.kr/images/book/large/544/l9788997235544.jpg','경영');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (5,34,'경제학 콘서트. 1','http://image.kyobobook.co.kr/images/book/large/889/l9788901054889.jpg','경제');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (6,46,'부자의 그릇','http://image.kyobobook.co.kr/images/book/large/619/l9791130633619.jpg','경제');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (7,86,'1984','http://image.kyobobook.co.kr/images/book/large/777/l9788937460777.jpg','고전소설');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (8,103,'데미안','http://image.kyobobook.co.kr/images/book/large/994/l8809529010994.jpg','고전소설');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (9,161,'7년의 밤','http://image.kyobobook.co.kr/images/book/large/992/l9788956604992.jpg','공포호러미스터리스릴러소설');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (10,177,'다빈치 코드. 1','http://image.kyobobook.co.kr/images/book/large/008/l9788983925008.jpg','공포호러미스터리스릴러소설');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (11,250,'당신 거기 있어줄래요','http://image.kyobobook.co.kr/images/book/large/791/l9788984370791.jpg','기타나라소설');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (12,269,'제3인류. 5','http://image.kyobobook.co.kr/images/book/large/665/l9788932917665.jpg','기타나라소설');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (13,274,'길 위에서 하버드까지','http://image.kyobobook.co.kr/images/book/large/783/l9791130631783.jpg','기타나라에세이');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (14,305,'술 취한 코끼리 길들이기','http://image.kyobobook.co.kr/images/book/large/135/l9791195026135.jpg','기타나라에세이');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (15,350,'마당을 나온 암탉','http://image.kyobobook.co.kr/images/book/large/710/l9788971968710.jpg','동화책');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (16,375,'코드네임 C','http://image.kyobobook.co.kr/images/book/large/002/l9791165794002.jpg','동화책');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (17,387,'성균관 유생들의 나날. 1','http://image.kyobobook.co.kr/images/book/large/051/l9788963710051.jpg','로맨스소설');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (18,395,'지구에서 한아뿐','http://image.kyobobook.co.kr/images/book/large/290/l9791188862290.jpg','로맨스소설');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (19,418,'대한민국이 묻는다','http://image.kyobobook.co.kr/images/book/large/847/l9788950968847.jpg','사회');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (20,447,'왜 세계의 절반은 굶주리는가?','http://image.kyobobook.co.kr/images/book/large/030/l9791187038030.jpg','사회');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (21,481,'광해 왕이 된 남자','http://image.kyobobook.co.kr/images/book/large/628/l9788901150628.jpg','역사대하소설');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (22,484,'남한산성','http://image.kyobobook.co.kr/images/book/large/534/l9788956253534.jpg','역사대하소설');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (23,506,'마션','http://image.kyobobook.co.kr/images/book/large/789/l9788925556789.jpg','영미소설일반');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (24,511,'벤자민 버튼의 시간은 거꾸로 간다','http://image.kyobobook.co.kr/images/book/large/114/l9788954637114.jpg','영미소설일반');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (25,639,'미움받을 용기','http://image.kyobobook.co.kr/images/book/large/342/l9788996991342.jpg','인문');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (26,668,'심리학 콘서트. 1','http://image.kyobobook.co.kr/images/book/large/574/l9788995843574.jpg','인문');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (27,771,'나미야 잡화점의 기적','http://image.kyobobook.co.kr/images/book/large/194/l9788972756194.jpg','일본소설일반');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (28,779,'상실의 시대','http://image.kyobobook.co.kr/images/book/large/987/l9788954675987.jpg','일본소설일반');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (29,815,'경청','http://image.kyobobook.co.kr/images/book/large/460/l9791187165460.jpg','자기계발');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (30,929,'지면서 이기는 관계술','http://image.kyobobook.co.kr/images/book/large/041/l9788960866041.jpg','자기계발');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (31,970,'대한민국 부동산의 미래','http://image.kyobobook.co.kr/images/book/large/852/l9791157844852.jpg','재테크');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (32,1026,'존리의 부자되기 습관','http://image.kyobobook.co.kr/images/book/large/720/l9791187481720.jpg','재테크');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (33,1043,'달러구트 꿈 백화점','http://image.kyobobook.co.kr/images/book/large/909/l9791165341909.jpg','판타지소설');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (34,1060,'헝거 게임','http://image.kyobobook.co.kr/images/book/large/981/l9791164135981.jpg','판타지소설');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (35,1062,'82년생 김지영','http://image.kyobobook.co.kr/images/book/large/135/l9788937473135.jpg','한국소설일반');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (36,1117,'아몬드','http://image.kyobobook.co.kr/images/book/large/267/l9788936434267.jpg','한국소설일반');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (37,1188,'나는 나로 살기로 했다','http://image.kyobobook.co.kr/images/book/large/845/l9791187119845.jpg','한국에세이');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (38,1306,'언어의 온도','http://image.kyobobook.co.kr/images/book/large/125/l9791195522125.jpg','한국에세이');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (39,1385,'가장 예쁜 생각을 너에게 주고 싶다','http://image.kyobobook.co.kr/images/book/large/820/l9788925561820.jpg','현대시');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (40,1427,'흔들리지 않고 피는 꽃이 어디 있으랴','http://image.kyobobook.co.kr/images/book/large/774/l9788925552774.jpg','현대시');



INSERT INTO club(club_num, club_name, club_image, club_detail) VALUES(1, '해오름','https://images.unsplash.com/photo-1572727984721-9e8bbd728f0d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80', '세상을 더 깊고, 넓게 바라보는 시간을 가져요');
INSERT INTO club(club_num, club_name, club_image, club_detail) VALUES(2, '도담도담','https://images.unsplash.com/photo-1597045145058-222946a8412c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=80','모임 선택하기 어렵다면 여기로 오세요');
INSERT INTO club(club_num, club_name, club_image, club_detail) VALUES(3, '로운','https://images.unsplash.com/photo-1598618589908-36922bcbb433?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80','아주 지적인 토론을 원하신다면');
INSERT INTO club(club_num, club_name, club_image, club_detail) VALUES(4, '솔빛길','https://images.unsplash.com/photo-1579206630372-ea5c6176866e?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=671&q=80','매일 한 권의 책을 읽고 토론을 합니다');
INSERT INTO club(club_num, club_name, club_image, club_detail) VALUES(5, '잎새', 'https://images.unsplash.com/photo-1603831905218-bc9cc8f51422?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=681&q=80','다정함과 유연함이 공존하는 따뜻한 모임 함께 해요');
INSERT INTO club(club_num, club_name, club_image, club_detail) VALUES(6, '모드니','https://images.unsplash.com/photo-1495640388908-05fa85288e61?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80','찐한 독서 인생을 시작해 봐요');
INSERT INTO club(club_num, club_name, club_image, club_detail) VALUES(7, '보나','https://images.unsplash.com/photo-1592965826498-1fc50855f376?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80','일상에 두근거릴 수 있는 순간들을 더해요');
INSERT INTO club(club_num, club_name, club_image, club_detail) VALUES(8, '무슬','https://images.unsplash.com/photo-1590176661052-7d04e53d16a2?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80','서로의 생각을 포용하고 배려해요');
INSERT INTO club(club_num, club_name, club_image, club_detail) VALUES(9, '눈꽃','https://images.unsplash.com/photo-1588144300695-f414e09350f1?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80','삶의 더 나은 선택지를 함께 만들어가요!');
INSERT INTO club(club_num, club_name, club_image, club_detail) VALUES(10, '리라','https://images.unsplash.com/photo-1584561775356-09cebd63d47a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=562&q=80','지금이 아니라면 밀린 책들을 언제 읽을까요?');

DELETE FROM club;
DELETE FROM club WHERE club_num = 8;
DELETE FROM club WHERE club_num = 9;
DELETE FROM club WHERE club_num = 10;
DELETE FROM RECOMMENDATION WHERE recom_num = 6;

DELETE FROM RECOMMENDATION WHERE recom_num = 5;


select * from club;
select * from comments;
select * from PRINT_BOOK;
select * from member;

--INSERT INTO CLUB(club_num, club_name, club_detail,club_type1,club_type2,club_type3) VALUES(seq_club_num.NEXTVAL,'test','test','a','b','c');--이건 일단 인서트 하지 말고 놔둬보세여 테스트 용이라

select * from recommendation;
select * from print_book;
select * from choice;
drop sequence seq_club_num;

DELETE FROM COMMENTS WHERE book_num = 6;
delete from choice;
delete from RECOMMENDATION;
delete from member where mem_num = 102;
drop sequence seq_club_num;
delete from club;
DELETE FROM book;



SELECT CONSTRAINT_NAME, TABLE_NAME, R_CONSTRAINT_NAME FROM USER_CONSTRAINTS

WHERE CONSTRAINT_NAME = 'SYS_C007455';

