select * from members
select * from babys
select * from posts
select * from rhythm

drop table members cascade constraint;
drop table posts cascade constraint;
drop table bodycheck cascade constraint;
drop table history cascade constraint;
drop table babys cascade constraint;
drop table rhythm cascade constraint;
drop sequence act_num_sequence;
drop sequence po_num_sequence;
drop sequence bd_num_sequence;
drop sequence rh_num_sequence;

create sequence act_num_sequence
increment by 1
start with 1
maxvalue 9999;

create sequence po_num_sequence
increment by 1
start with 1
maxvalue 9999;

create sequence bd_num_sequence
increment by 1
start with 1
maxvalue 9999;

create sequence rh_num_sequence
increment by 1
start with 1
maxvalue 9999;

CREATE TABLE "MEMBERS" (
	"EMAIL"	VARCHAR2(100)		NOT NULL,
	"PW"	VARCHAR2(100)		NULL,
	"NAME"	VARCHAR2(100)		NULL,
	"AGE"	NUMBER		NULL,
	"TEL"	VARCHAR2(100)		NULL
);

CREATE TABLE "POSTS" (
	"PO_NUM"	NUMBER		NOT NULL,
	"PO_TITLE"	VARCHAR2(100)		NULL,
	"PO_CONTENT"	VARCHAR2(500)		NULL,
	"PO_PW"	VARCHAR2(100)		NULL,
	"EMAIL"	VARCHAR2(100)		NOT NULL,
	"PO_TIME"	TIMESTAMP	DEFAULT SYSTIMESTAMP	NULL
);

CREATE TABLE "HISTORY" (
	"ACT_NUM"	NUMBER		NOT NULL,
	"ACTION"	VARCHAR2(100)		NULL,
	"ACT_TIME"	TIMESTAMP	DEFAULT SYSTIMESTAMP	NULL,
	"LEVEL"	NUMBER		NULL,
	"EMAIL"	VARCHAR2(100)		NOT NULL
);

CREATE TABLE "BABYS" (
	"EMAIL"	VARCHAR2(100)		NOT NULL,
	"BABY_NAME"	VARCHAR2(100)		NULL,
	"BABY_BIRTH"	DATE		NULL,
	"BABY_GENDER"	VARCHAR2(100)		NULL,
	"CAM_IP"	VARCHAR2(100)		NULL
);

CREATE TABLE "RHYTHM" (
	"RH_NUM"	NUMBER		NOT NULL,
	"RH_CATEGORY"	VARCHAR2(100)		NULL,
	"RH_MEAL"	VARCHAR2(100)		NULL,
	"RH_DEFECATE"	VARCHAR2(100)		NULL,
	"RH_SLEEP"	TIMESTAMP		NULL,
	"RH_TIME"	TIMESTAMP	DEFAULT SYSTIMESTAMP	NULL,
	"EMAIL"	VARCHAR2(100)		NOT NULL
);

CREATE TABLE "BODYCHECK" (
	"BD_NUM"	NUMBER		NOT NULL,
	"BD_HEIGHT"	VARCHAR2(100)		NULL,
	"BD_WEIGHT"	VARCHAR2(100)		NULL,
	"BD_TIME"	TIMESTAMP	DEFAULT SYSTIMESTAMP	NULL,
	"EMAIL"	VARCHAR2(100)		NOT NULL
);

ALTER TABLE "MEMBERS" ADD CONSTRAINT "PK_MEMBERS" PRIMARY KEY (
	"EMAIL"
);

ALTER TABLE "POSTS" ADD CONSTRAINT "PK_POSTS" PRIMARY KEY (
	"PO_NUM"
);

ALTER TABLE "HISTORY" ADD CONSTRAINT "PK_HISTORY" PRIMARY KEY (
	"ACT_NUM"
);

ALTER TABLE "BABYS" ADD CONSTRAINT "PK_BABYS" PRIMARY KEY (
	"EMAIL"
);

ALTER TABLE "RHYTHM" ADD CONSTRAINT "PK_RHYTHM" PRIMARY KEY (
	"RH_NUM"
);

ALTER TABLE "BODYCHECK" ADD CONSTRAINT "PK_BODYCHECK" PRIMARY KEY (
	"BD_NUM"
);

ALTER TABLE "POSTS" ADD CONSTRAINT "FK_MEMBERS_TO_POSTS_1" FOREIGN KEY (
	"EMAIL"
)
REFERENCES "MEMBERS" (
	"EMAIL"
);

ALTER TABLE "HISTORY" ADD CONSTRAINT "FK_BABYS_TO_HISTORY_1" FOREIGN KEY (
	"EMAIL"
)
REFERENCES "BABYS" (
	"EMAIL"
);

ALTER TABLE "BABYS" ADD CONSTRAINT "FK_MEMBERS_TO_BABYS_1" FOREIGN KEY (
	"EMAIL"
)
REFERENCES "MEMBERS" (
	"EMAIL"
);

ALTER TABLE "RHYTHM" ADD CONSTRAINT "FK_BABYS_TO_RHYTHM_1" FOREIGN KEY (
	"EMAIL"
)
REFERENCES "BABYS" (
	"EMAIL"
);

ALTER TABLE "BODYCHECK" ADD CONSTRAINT "FK_BABYS_TO_BODYCHECK_1" FOREIGN KEY (
	"EMAIL"
)
REFERENCES "BABYS" (
	"EMAIL"
);






insert into members values ('admin', 123, '관리자', 20, '남자');
insert into babys values ('admin' 'baby', '2020-10-07' , '남자');

insert into members values ('admin', 123, '관리자', 20, 56987234);
insert into babys(email, baby_name, baby_birth, baby_gender) values ('admin', 'baby', '2020-10-07', '남자');
insert into posts(po_num, po_title, po_content, po_pw, email) values (po_num_sequence.nextval, 'test', 'test', '1', 'admin');
insert into bodycheck(bd_num, bd_height, bd_weight, email) values (bd_num_sequence.nextval, '30cm', '6kg', 'admin');
insert into history(act_num, email, Action) values (act_num_sequence.nextval, 'admin', '울음발생');
insert into rhythm(rh_num, rh_category, rh_meal, email) values (rh_num_sequence.nextval, 'meal', '아침 100ml', 'admin');
insert into rhythm(rh_num, rh_category, rh_defecate, email) values (rh_num_sequence.nextval, 'defecate', '대변', 'admin');
insert into rhythm(rh_num, rh_category, email) values (rh_num_sequence.nextval, 'sleep', 'admin');
insert into bodycheck(bd_num, bd_height, bd_weight, email) values (bd_num_sequence.nextval, '30', '30', 'admin');

delete babys where email = 'aaaa';

update babys set cam_ip = 111 where email = 'admin'
update posts set po_pw = '공개' where email = 'admin'
update rhythm set rh_sleep = systimestamp where email = 'admin' and rh_num = 5;

b.baby_birth+50 as fifty, b.baby_birth+100 as hundred

select m.email, b.baby_name, b.cam_ip, to_date(b.baby_birth, 'yyyy-mm-dd') from members m, babys b where m.email = b.email and m.email = 'admin';

select m.email, b.baby_name, b.cam_ip, to_char(b.baby_birth, 'yyyy-mm-dd') as birth, to_char(b.baby_birth+50, 'yyyy-mm-dd') as fifty, to_char(b.baby_birth+100, 'yyyy-mm-dd') as hundred from members m, babys b where m.email = b.email and m.email = 'admin';

select m.email, b.baby_name, b.cam_ip, b.baby_birth
from members m, babys b
where m.email = b.email

select * from members m, babys b where m.email = b.email and m.email = 'admin'

select * from rhythm;
select * from bodycheck;
update bodycheck set bd_weight=6 where bd_num=1;

select max(bd_height),max(bd_weight), to_char(bd_time, 'mm-dd') as day from bodycheck where email='admin' group by to_char(bd_time, 'mm-dd') order by day desc;

select count(rh_category), to_char(rh_time, 'mm-dd') as day from rhythm where email = 'admin' and rh_category = 'meal' and to_char(rh_time, 'mm-dd') between to_char(rh_time-7, 'mm-dd') and to_char(rh_time, 'mm-dd') group by to_char(rh_time, 'mm-dd') order by day desc;

select * from posts;
select po_num, po_title, po_content, po_pw, email, to_char(po_time, 'MM/dd/YY HH24:mi') as day from posts where email='admin' or po_pw='공개' order by day desc;
select * from posts where po_title like '%확인%';

select to_char(rh_time-7, 'mm-dd') as day from RHYTHM where email = 'sh12@naver.com' and rh_category = 'meal' and to_char(rh_time, 'mm-dd') between to_char(SYSTIMESTAMP-7, 'mm-dd') and to_char(SYSTIMESTAMP, 'mm-dd');
select count(rh_category), to_char(rh_time, 'mm-dd') as day from rhythm where email = 'admin' and rh_category = 'sleep' and to_char(rh_time, 'mm-dd') between to_char(rh_time-7, 'mm-dd') and to_char(rh_time, 'mm-dd') group by to_char(rh_time, 'mm-dd') order by day
select count(rh_category), to_char(rh_time, 'mm-dd') as day from rhythm where email = 'sh12@naver.com' and rh_category = 'meal' and to_char(rh_time, 'mm-dd') between to_char(rh_time-7, 'mm-dd') and to_char(rh_time, 'mm-dd') group by to_char(rh_time, 'mm-dd') order by day

insert into rhythm(rh_num, rh_category, rh_meal, rh_time, email) values (rh_num_sequence.nextval, 'meal', '100', '2020-10-17','sh12@naver.com');
insert into rhythm(rh_num, rh_category, rh_meal, rh_time, email) values (rh_num_sequence.nextval, 'meal', '100', '2020-10-18','sh12@naver.com');
insert into rhythm(rh_num, rh_category, rh_meal, rh_time, email) values (rh_num_sequence.nextval, 'meal', '100', '2020-10-19','sh12@naver.com');
insert into rhythm(rh_num, rh_category, rh_meal, rh_time, email) values (rh_num_sequence.nextval, 'meal', '100', '2020-10-20','sh12@naver.com');
insert into rhythm(rh_num, rh_category, rh_meal, rh_time, email) values (rh_num_sequence.nextval, 'meal', '100', '2020-10-21','sh12@naver.com');
insert into rhythm(rh_num, rh_category, rh_meal, rh_time, email) values (rh_num_sequence.nextval, 'meal', '100', '2020-10-22','sh12@naver.com');
insert into rhythm(rh_num, rh_category, rh_meal, rh_time, email) values (rh_num_sequence.nextval, 'meal', '100', '2020-10-23','sh12@naver.com');

insert into rhythm(rh_num, rh_category, rh_defecate, rh_time, email) values (rh_num_sequence.nextval, 'defecate', '많음', '2020-10-16','sh12@naver.com');
insert into rhythm(rh_num, rh_category, rh_defecate, rh_time, email) values (rh_num_sequence.nextval, 'defecate', '많음', '2020-10-17','sh12@naver.com');
insert into rhythm(rh_num, rh_category, rh_defecate, rh_time, email) values (rh_num_sequence.nextval, 'defecate', '많음', '2020-10-18','sh12@naver.com');
insert into rhythm(rh_num, rh_category, rh_defecate, rh_time, email) values (rh_num_sequence.nextval, 'defecate', '많음', '2020-10-19','sh12@naver.com');
insert into rhythm(rh_num, rh_category, rh_defecate, rh_time, email) values (rh_num_sequence.nextval, 'defecate', '많음', '2020-10-20','sh12@naver.com');
insert into rhythm(rh_num, rh_category, rh_defecate, rh_time, email) values (rh_num_sequence.nextval, 'defecate', '많음', '2020-10-21','sh12@naver.com');
insert into rhythm(rh_num, rh_category, rh_defecate, rh_time, email) values (rh_num_sequence.nextval, 'defecate', '많음', '2020-10-22','sh12@naver.com');
insert into rhythm(rh_num, rh_category, rh_defecate, rh_time, email) values (rh_num_sequence.nextval, 'defecate', '많음', '2020-10-23','sh12@naver.com');

select * from rhythm where email = 'sh12@naver.com' and rh_category = 'sleep';
insert into rhythm(rh_num, rh_category, rh_meal, rh_sleep, rh_time, email) values (rh_num_sequence.nextval, 'sleep', '100', '2020-10-23', '2020-10-17','sh12@naver.com');
insert into rhythm(rh_num, rh_category, rh_meal, rh_sleep, rh_time, email) values (rh_num_sequence.nextval, 'sleep', '100', '2020-10-23', '2020-10-18','sh12@naver.com');
insert into rhythm(rh_num, rh_category, rh_meal, rh_sleep, rh_time, email) values (rh_num_sequence.nextval, 'sleep', '100', '2020-10-23', '2020-10-19','sh12@naver.com');
insert into rhythm(rh_num, rh_category, rh_meal, rh_sleep, rh_time, email) values (rh_num_sequence.nextval, 'sleep', '100', '2020-10-23', '2020-10-20','sh12@naver.com');
insert into rhythm(rh_num, rh_category, rh_meal, rh_sleep, rh_time, email) values (rh_num_sequence.nextval, 'sleep', '100', '2020-10-23', '2020-10-21','sh12@naver.com');
insert into rhythm(rh_num, rh_category, rh_meal, rh_sleep, rh_time, email) values (rh_num_sequence.nextval, 'sleep', '100', '2020-10-23', '2020-10-22','sh12@naver.com');
insert into rhythm(rh_num, rh_category, rh_meal, rh_sleep, rh_time, email) values (rh_num_sequence.nextval, 'sleep', '100', '2020-10-23', '2020-10-23','sh12@naver.com');

select * from BODYCHECK;
insert into bodycheck(bd_num, bd_height, bd_weight, bd_time, email) values (bd_num_sequence.nextval, '43', '3', '2020-10-17','sh12@naver.com');
insert into bodycheck(bd_num, bd_height, bd_weight, bd_time, email) values (bd_num_sequence.nextval, '43.5', '3', '2020-10-18','sh12@naver.com');
insert into bodycheck(bd_num, bd_height, bd_weight, bd_time, email) values (bd_num_sequence.nextval, '43.5', '3.1', '2020-10-19','sh12@naver.com');
insert into bodycheck(bd_num, bd_height, bd_weight, bd_time, email) values (bd_num_sequence.nextval, '43.7', '3.3', '2020-10-20','sh12@naver.com');
insert into bodycheck(bd_num, bd_height, bd_weight, bd_time, email) values (bd_num_sequence.nextval, '44', '3.5', '2020-10-21','sh12@naver.com');
insert into bodycheck(bd_num, bd_height, bd_weight, bd_time, email) values (bd_num_sequence.nextval, '44.3', '3.5', '2020-10-22','sh12@naver.com');
insert into bodycheck(bd_num, bd_height, bd_weight, bd_time, email) values (bd_num_sequence.nextval, '44.5', '3.8', '2020-10-23','sh12@naver.com');
insert into bodycheck(bd_num, bd_height, bd_weight, bd_time, email) values (bd_num_sequence.nextval, '44.5', '3.5', '2020-10-24','sh12@naver.com');