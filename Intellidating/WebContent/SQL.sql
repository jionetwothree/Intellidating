DROP TABLE choice; -- ���
DROP TABLE CLUB; --���
DROP TABLE book; -- ���
DROP TABLE member; -- ���
DROP TABLE comments; -- ���
DROP TABLE print_book; --���
DROP TABLE recommendation; --���


drop sequence seq_club_num; --���
drop sequence seq_mem_num; --���
drop sequence seq_book_num; --���
drop sequence seq_choice_num; --���
drop sequence seq_co_num; --��� 
drop sequence seq_recom_num; --���

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

CREATE TABLE club(
club_num number(10) CONSTRAINT club_num_pk primary key, -- ��ȣ ������ seq_club_num.NEXTVAR
club_name varchar2(50) not null, -- ���� �̸�
club_image varchar2(200) not null, -- ���� �̹���
club_mem_cnt number(3) default 0, -- ���� ���� �ο�
club_detail varchar2(500), -- ���� ����
club_type1 varchar2(500), -- ���� ����
club_type2 varchar2(500),
club_type3 varchar2(500),
CONSTRAINT UQ_club_name unique (club_name)
);

create sequence seq_club_num -- ���� ��ȣ ������
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;
select * from book;
CREATE TABLE book(
book_num number(10) CONSTRAINT book_num_pk primary key, -- å ��ȣ ������ seq_book_num.NEXTVAR
book_name varchar2(200) not null, -- å �̸�
book_author varchar2(200) not null, -- å ����
book_publisher varchar2(200) not null, -- å ���ǻ�
book_date number(10) not null, -- å ��������
book_image varchar2(200) not null, -- å �̹��� �ּ�
book_category1 varchar2(50), -- �з� 1
book_category2 varchar2(50), -- �з� 2
book_category3 varchar2(50) -- �з� 3
);

create sequence seq_book_num -- å ��ȣ ������
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;



CREATE TABLE member(
mem_num number(10) CONSTRAINT mem_num_pk primary key, -- ��ȣ ������ seq_mem_num.NEXTVAR
mem_email varchar2(100) not null, -- �̸��� 
mem_password varchar2(32) not null, -- ��й�ȣ
mem_username varchar2(20) not null, -- �̸�
mem_nickname varchar2(50) not null, -- �г���
mem_registerday date default sysdate, -- ��������
mem_club1 number(10), -- ������ ���� 1
mem_club2 number(10), -- ������ ���� 2 
mem_club3 number(10), -- ������ ���� 3
CONSTRAINT FK_mem_club1 FOREIGN KEY (mem_club1) REFERENCES club(club_num),
CONSTRAINT FK_mem_club2 FOREIGN KEY (mem_club2) REFERENCES club(club_num),
CONSTRAINT FK_mem_club3 FOREIGN KEY (mem_club3) REFERENCES club(club_num),
CONSTRAINT UQ_mem_email unique (mem_email),
CONSTRAINT UQ_mem_nick unique (mem_nickname)
);

create sequence seq_mem_num -- ��� ��ȣ ������
start with 101
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;

CREATE TABLE choice(
choice_num number(10) CONSTRAINT choice_num_pk primary key, -- ������
mem_num number(10) NOT NULL, -- ��� ��ȣ �ܷ�Ű
choice1 varchar2(50) NOT NULL, -- ������ å 1
choice2 varchar2(50) NOT NULL, -- ������ å 2
choice3 varchar2(50) NOT NULL, -- ������ å 3
choice4 varchar2(50) NOT NULL, -- ������ å 4
choice5 varchar2(50) NOT NULL, -- ������ å 5
CONSTRAINT FK_mem_num FOREIGN KEY (mem_num) REFERENCES member(mem_num)
);

create sequence seq_choice_num -- ���� ��ȣ ������
start with 101
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;

CREATE TABLE comments(
comment_num number(10) CONSTRAINT comment_num_pk primary key, -- ��� ��ȣ
book_num number(10), -- å ��ȣ
mem_num number(10),-- �ۼ��� ��ȣ
content varchar2(100) not null, -- ����
comment_date date default sysdate, -- �ۼ�����
FOREIGN KEY (book_num) REFERENCES book(book_num),
FOREIGN KEY (mem_num) REFERENCES member(mem_num)
);

create sequence seq_co_num -- ��� ��ȣ ������
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;

CREATE TABLE recommendation(
recom_num number(10) CONSTRAINT recom_num_pk primary key, -- ��õ ��ȣ
mem_num number(10) UNIQUE, -- ��� ��ȣ
recom_club1 number(10), -- ��õ Ŭ�� ��ȣ1
recom_club2 number(10), -- ��õ Ŭ�� ��ȣ2
recom_club3 number(10), -- ��õ Ŭ�� ��ȣ3
recom_book1 number(10), -- ��õ ���� ��ȣ1
recom_book2 number(10), -- ��õ ���� ��ȣ2
recom_book3 number(10), -- ��õ ���� ��ȣ3
FOREIGN KEY (mem_num) REFERENCES member(mem_num),
FOREIGN KEY (recom_club1) REFERENCES club(club_num),
FOREIGN KEY (recom_club2) REFERENCES club(club_num),
FOREIGN KEY (recom_club3) REFERENCES club(club_num),
FOREIGN KEY (recom_book1) REFERENCES book(book_num),
FOREIGN KEY (recom_book2) REFERENCES book(book_num),
FOREIGN KEY (recom_book3) REFERENCES book(book_num)
);
select * from member;
create sequence seq_recom_num -- ��õ ��ȣ ������
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

INSERT INTO CHAT VALUES (chatid.nextval, 'a', 'b', sysdate)

-������ �����- 

create sequence chatid
start with 1
increment by 1

select * from print_book;
select * from PRINT_BOOK;

insert into member(mem_num, mem_email, mem_password, mem_username, mem_nickname) 
values(seq_mem_num.NEXTVAL, 'admin','1234','������','������');

insert into book values (seq_book_num.NEXTVAL,'�ʿ� �Բ���� �λ��� �����̴�','������','������Ͽ콺', 20150301, 'http://image.kyobobook.co.kr/images/book/large/097/l9791170400097.jpg
', '�ڱ���', '�ΰ�����', '�ΰ������Ϲ�');

insert into book values (seq_book_num.NEXTVAL,'���鼭 �̱�� �����','������','������', 20191212, 'http://image.kyobobook.co.kr/images/book/large/041/l9788960866041.jpg
', '�ÿ�����', '�ѱ���', '�����');

insert into book values (seq_book_num.NEXTVAL,'������ ������','������ �׷��̾�','�������ǰ���������', 20200526, 'http://image.kyobobook.co.kr/images/book/large/305/l9788957821305.jpg
', '�����濵', '����ũ����', '����ũ');

insert into book values (seq_book_num.NEXTVAL,'�ٸ��� ���̱�','��پ߽� �߽���','������', 20151221, 'http://image.kyobobook.co.kr/images/book/large/184/l9788952775184.jpg
', '�Ҽ�', '�Ϻ��Ҽ�', '�Ϻ��Ҽ��Ϲ�');

insert into book values (seq_book_num.NEXTVAL,'�ĸ��� �� �����','���� �Դ���','MEDIA2.0', 20060723, 'http://image.kyobobook.co.kr/images/book/large/421/l9788990739421.jpg
', '�ÿ�����', '���� ������', '���̿�����');


INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (1,8,'�츮�� ����ϱ�','http://image.kyobobook.co.kr/images/book/large/373/l9788956601373.jpg','SF���мҼ�');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (2,14,'���ǿ�','http://image.kyobobook.co.kr/images/book/large/741/l9788932907741.jpg','SF���мҼ�');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (3,16,'������ ��','http://image.kyobobook.co.kr/images/book/large/127/l9791189352127.jpg','�濵');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (4,26,'������ ��� ������ ���￡�� ź���ߴ�','http://image.kyobobook.co.kr/images/book/large/544/l9788997235544.jpg','�濵');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (5,34,'������ �ܼ�Ʈ. 1','http://image.kyobobook.co.kr/images/book/large/889/l9788901054889.jpg','����');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (6,46,'������ �׸�','http://image.kyobobook.co.kr/images/book/large/619/l9791130633619.jpg','����');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (7,86,'1984','http://image.kyobobook.co.kr/images/book/large/777/l9788937460777.jpg','�����Ҽ�');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (8,103,'���̾�','http://image.kyobobook.co.kr/images/book/large/994/l8809529010994.jpg','�����Ҽ�');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (9,161,'7���� ��','http://image.kyobobook.co.kr/images/book/large/992/l9788956604992.jpg','����ȣ���̽��͸��������Ҽ�');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (10,177,'�ٺ�ġ �ڵ�. 1','http://image.kyobobook.co.kr/images/book/large/008/l9788983925008.jpg','����ȣ���̽��͸��������Ҽ�');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (11,250,'��� �ű� �־��ٷ���','http://image.kyobobook.co.kr/images/book/large/791/l9788984370791.jpg','��Ÿ����Ҽ�');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (12,269,'��3�η�. 5','http://image.kyobobook.co.kr/images/book/large/665/l9788932917665.jpg','��Ÿ����Ҽ�');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (13,274,'�� ������ �Ϲ������','http://image.kyobobook.co.kr/images/book/large/783/l9791130631783.jpg','��Ÿ���󿡼���');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (14,305,'�� ���� �ڳ��� ����̱�','http://image.kyobobook.co.kr/images/book/large/135/l9791195026135.jpg','��Ÿ���󿡼���');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (15,350,'������ ���� ��ż','http://image.kyobobook.co.kr/images/book/large/710/l9788971968710.jpg','��ȭå');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (16,375,'�ڵ���� C','http://image.kyobobook.co.kr/images/book/large/002/l9791165794002.jpg','��ȭå');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (17,387,'���հ� �������� ����. 1','http://image.kyobobook.co.kr/images/book/large/051/l9788963710051.jpg','�θǽ��Ҽ�');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (18,395,'�������� �Ѿƻ�','http://image.kyobobook.co.kr/images/book/large/290/l9791188862290.jpg','�θǽ��Ҽ�');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (19,418,'���ѹα��� ���´�','http://image.kyobobook.co.kr/images/book/large/847/l9788950968847.jpg','��ȸ');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (20,447,'�� ������ ������ ���ָ��°�?','http://image.kyobobook.co.kr/images/book/large/030/l9791187038030.jpg','��ȸ');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (21,481,'���� ���� �� ����','http://image.kyobobook.co.kr/images/book/large/628/l9788901150628.jpg','������ϼҼ�');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (22,484,'���ѻ꼺','http://image.kyobobook.co.kr/images/book/large/534/l9788956253534.jpg','������ϼҼ�');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (23,506,'����','http://image.kyobobook.co.kr/images/book/large/789/l9788925556789.jpg','���̼Ҽ��Ϲ�');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (24,511,'���ڹ� ��ư�� �ð��� �Ųٷ� ����','http://image.kyobobook.co.kr/images/book/large/114/l9788954637114.jpg','���̼Ҽ��Ϲ�');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (25,639,'�̿���� ���','http://image.kyobobook.co.kr/images/book/large/342/l9788996991342.jpg','�ι�');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (26,668,'�ɸ��� �ܼ�Ʈ. 1','http://image.kyobobook.co.kr/images/book/large/574/l9788995843574.jpg','�ι�');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (27,771,'���̾� ��ȭ���� ����','http://image.kyobobook.co.kr/images/book/large/194/l9788972756194.jpg','�Ϻ��Ҽ��Ϲ�');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (28,779,'����� �ô�','http://image.kyobobook.co.kr/images/book/large/987/l9788954675987.jpg','�Ϻ��Ҽ��Ϲ�');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (29,815,'��û','http://image.kyobobook.co.kr/images/book/large/460/l9791187165460.jpg','�ڱ���');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (30,929,'���鼭 �̱�� �����','http://image.kyobobook.co.kr/images/book/large/041/l9788960866041.jpg','�ڱ���');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (31,970,'���ѹα� �ε����� �̷�','http://image.kyobobook.co.kr/images/book/large/852/l9791157844852.jpg','����ũ');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (32,1026,'������ ���ڵǱ� ����','http://image.kyobobook.co.kr/images/book/large/720/l9791187481720.jpg','����ũ');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (33,1043,'�޷���Ʈ �� ��ȭ��','http://image.kyobobook.co.kr/images/book/large/909/l9791165341909.jpg','��Ÿ���Ҽ�');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (34,1060,'��� ����','http://image.kyobobook.co.kr/images/book/large/981/l9791164135981.jpg','��Ÿ���Ҽ�');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (35,1062,'82��� ������','http://image.kyobobook.co.kr/images/book/large/135/l9788937473135.jpg','�ѱ��Ҽ��Ϲ�');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (36,1117,'�Ƹ��','http://image.kyobobook.co.kr/images/book/large/267/l9788936434267.jpg','�ѱ��Ҽ��Ϲ�');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (37,1188,'���� ���� ���� �ߴ�','http://image.kyobobook.co.kr/images/book/large/845/l9791187119845.jpg','�ѱ�������');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (38,1306,'����� �µ�','http://image.kyobobook.co.kr/images/book/large/125/l9791195522125.jpg','�ѱ�������');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (39,1385,'���� ���� ������ �ʿ��� �ְ� �ʹ�','http://image.kyobobook.co.kr/images/book/large/820/l9788925561820.jpg','�����');
INSERT INTO PRINT_BOOK (SELECT_NUM, BOOK_NUM
, BOOK_NAME, BOOK_IMAGE, BOOK_CATEGORY3) VALUES (40,1427,'��鸮�� �ʰ� �Ǵ� ���� ��� ������','http://image.kyobobook.co.kr/images/book/large/774/l9788925552774.jpg','�����');

INSERT INTO club(club_num, club_name, club_image, club_detail) VALUES(seq_club_num.NEXTVAL, '�ؿ���','https://news.cgtn.com/news/7a596a4e7863444f35417a4d7a49444e7a51444f31457a6333566d54/img/8b2c93bb7ef4452ba80963355b4e7a6c/8b2c93bb7ef4452ba80963355b4e7a6c.jpg', '1�� �����Դϴ�.');
INSERT INTO club(club_num, club_name, club_image, club_detail) VALUES(seq_club_num.NEXTVAL, '���㵵��','https://image.freepik.com/free-photo/flowering-of-adonis-vernalis-spring-pheasant-s-eye-yellow-pheasant-s-eye-or-false-hellebore_162695-444.jpg','2�� �����Դϴ�.');
INSERT INTO club(club_num, club_name, club_image, club_detail) VALUES(seq_club_num.NEXTVAL, '�ο�','https://images.immediate.co.uk/production/volatile/sites/10/2018/09/eae9cbb7-9041-4113-ba62-595f18d49906-aaf58bb.jpg?quality=90&resize=960%2C640','3�� �����Դϴ�.');
INSERT INTO club(club_num, club_name, club_image, club_detail) VALUES(seq_club_num.NEXTVAL, '�ֺ���','https://img.freepik.com/free-photo/amazing-yellow-daffodils-flower-field-in-the-morning-sunlight_24711-255.jpg?size=626&ext=jpg','4�� �����Դϴ�.');
INSERT INTO club(club_num, club_name, club_image, club_detail) VALUES(seq_club_num.NEXTVAL, '�ٻ�', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyBn7FHJ6KmlH4O7nytXZ9si6ab_3pFe-6vA&usqp=CAU','5�� �����Դϴ�.');
INSERT INTO club(club_num, club_name, club_image, club_detail) VALUES(seq_club_num.NEXTVAL, '����','https://www.gardeningknowhow.com/wp-content/uploads/2020/11/orange-french-marigolds.jpg','6�� �����Դϴ�.');
INSERT INTO club(club_num, club_name, club_image, club_detail) VALUES(seq_club_num.NEXTVAL, '����','https://st.depositphotos.com/1718493/5125/i/600/depositphotos_51251617-stock-photo-lavender-on-a-wooden-desk.jpg','7�� �����Դϴ�.');
INSERT INTO club(club_num, club_name, club_image, club_detail) VALUES(seq_club_num.NEXTVAL, '����','https://www.gardendesign.com/pictures/images/900x705Max/dream-team-s-portland-garden_6/yellow-freesia-flower-yellow-flower-shutterstock-com_14849.jpg','8�� �����Դϴ�.');
INSERT INTO club(club_num, club_name, club_image, club_detail) VALUES(seq_club_num.NEXTVAL, '����','https://www.thermofisher.com/blog/proteomics/wp-content/uploads/sites/2/2017/01/shutterstock_408614731.jpg','9�� �����Դϴ�.');
INSERT INTO club(club_num, club_name, club_image, club_detail) VALUES(seq_club_num.NEXTVAL, '����','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYavTqCXGvEG0ditLuUZ3wDvLkYWtDXDb-5Q&usqp=CAU','10�� �����Դϴ�.');

DELETE FROM club WHERE club_num = 7;
DELETE FROM club WHERE club_num = 8;
DELETE FROM club WHERE club_num = 9;
DELETE FROM club WHERE club_num = 10;
DELETE FROM RECOMMENDATION WHERE recom_num = 6;
DELETE FROM RECOMMENDATION WHERE recom_num = 5;

select * from club;
select * from comments;
select * from PRINT_BOOK;
select * from member;

--INSERT INTO CLUB(club_num, club_name, club_detail,club_type1,club_type2,club_type3) VALUES(seq_club_num.NEXTVAL,'test','test','a','b','c');--�̰� �ϴ� �μ�Ʈ ���� ���� ���ֺ����� �׽�Ʈ ���̶�

select * from club;

select * from recommendation;
select * from book;
select * from MEMBER;
drop sequence seq_club_num;

DELETE FROM COMMENTS WHERE book_num = 6;
delete from choice;
delete from RECOMMENDATION;
DELETE FROM book;

SELECT CONSTRAINT_NAME, TABLE_NAME, R_CONSTRAINT_NAME FROM USER_CONSTRAINTS
WHERE CONSTRAINT_NAME = 'SYS_C007460';
