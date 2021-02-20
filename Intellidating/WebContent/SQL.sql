CREATE TABLE club(
club_num number(10) CONSTRAINT club_num_pk primary key, -- ��ȣ ������ seq_club_num.NEXTVAR
club_name varchar2(50) not null, -- ���� �̸�
club_mem_cnt number(3) default 0, -- ���� ���� �ο�
club_detail varchar2(500), -- ���� ����
club_type1 varchar2(500) not null, -- ���� ����
club_type2 varchar2(500) not null,
club_type3 varchar2(500) not null,
CONSTRAINT UQ_club_name unique (club_name)
);
select * from club
INSERT INTO CLUB(club_num, club_name, club_detail,club_type1,club_type2,club_type3) VALUES(seq_club_num.NEXTVAL,'test','test','a','b','c');

create sequence seq_club_num -- ���� ��ȣ ������
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;

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
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;

CREATE TABLE choice(
choice_num number(10) CONSTRAINT choice_num_pk primary key,
mem_num number(10) NOT NULL, -- ��� ��ȣ �ܷ�Ű
choice1 number(10) NOT NULL, -- ������ å 1
choice2 number(10) NOT NULL, -- ������ å 2
choice3 number(10) NOT NULL, -- ������ å 3
choice4 number(10) NOT NULL, -- ������ å 4
choice5 number(10) NOT NULL, -- ������ å 5
CONSTRAINT FK_mem_num FOREIGN KEY (mem_num) REFERENCES member(mem_num),
CONSTRAINT FK_choice1 FOREIGN KEY (choice1) REFERENCES book(book_num),
CONSTRAINT FK_choice2 FOREIGN KEY (choice2) REFERENCES book(book_num),
CONSTRAINT FK_choice3 FOREIGN KEY (choice3) REFERENCES book(book_num),
CONSTRAINT FK_choice4 FOREIGN KEY (choice4) REFERENCES book(book_num),
CONSTRAINT FK_choice5 FOREIGN KEY (choice5) REFERENCES book(book_num)
);

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

CREATE TABLE recom_club(
recom_num number(10) CONSTRAINT recom_num_pk primary key, -- ��õ ��ȣ
mem_num number(10), -- ��� ��ȣ
recom_club1 number(10), -- ��õ Ŭ�� ��ȣ1
recom_club2 number(10), -- ��õ Ŭ�� ��ȣ2
recom_club3 number(10), -- ��õ Ŭ�� ��ȣ3
FOREIGN KEY (mem_num) REFERENCES member(mem_num),
FOREIGN KEY (recom_club1) REFERENCES club(club_num),
FOREIGN KEY (recom_club2) REFERENCES club(club_num),
FOREIGN KEY (recom_club3) REFERENCES club(club_num)
);

create sequence seq_recom_num -- ��� ��ȣ ������
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;

insert into member(mem_num, mem_email, mem_password, mem_username, mem_nickname) 
values(seq_mem_num.NEXTVAL, 'admin','1234','������','������');

insert into book values (seq_book_num.NEXTVAL,'�ʿ� �Բ���� �λ��� �����̴�','������','������Ͽ콺', 20150301, 'http://image.kyobobook.co.kr/images/book/large/041/l9788960866041.jpg
', '�ڱ���', '�ΰ�����', '�ΰ������Ϲ�');

insert into book values (seq_book_num.NEXTVAL,'���鼭 �̱�� �����','������','������', 20191212, 'http://image.kyobobook.co.kr/images/book/large/097/l9791170400097.jpg
', '�ÿ�����', '�ѱ���', '�����');

insert into book values (seq_book_num.NEXTVAL,'������ ������','������ �׷��̾�','�������ǰ���������', 20200526, 'http://image.kyobobook.co.kr/images/book/large/305/l9788957821305.jpg
', '�����濵', '����ũ����', '����ũ');

insert into book values (seq_book_num.NEXTVAL,'�ٸ��� ���̱�','��پ߽� �߽���','������', 20151221, 'http://image.kyobobook.co.kr/images/book/large/184/l9788952775184.jpg
', '�Ҽ�', '�Ϻ��Ҽ�', '�Ϻ��Ҽ��Ϲ�');

insert into book values (seq_book_num.NEXTVAL,'�ĸ��� �� �����','���� �Դ���','MEDIA2.0', 20060723, 'http://image.kyobobook.co.kr/images/book/large/421/l9788990739421.jpg
', '�ÿ�����', '���� ������', '���̿�����');

drop table 
DROP TABLE book CASCADE CONSTRAINTS;
drop sequence seq_mem_num;

select * from book;