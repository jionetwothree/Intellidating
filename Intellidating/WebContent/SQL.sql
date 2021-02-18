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
book_date number(10), -- å ��������
book_image varchar2(200), -- å �̹��� �ּ�
book_category1 varchar2(50), -- �з� 1
book_category2 varchar2(50), -- �з� 2
book_category3 varchar2(50) -- �з� 3
);

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

insert into member(mem_num, mem_email, mem_password, mem_username, mem_nickname) 
values(seq_mem_num.NEXTVAL, 'admin','1234','������','������');

drop table comments;
select * from comments;