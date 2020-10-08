select * from members
select * from babys

drop table members cascade constraint;
drop table posts cascade constraint;
drop table sensors cascade constraint;
drop table history cascade constraint;
drop table babys cascade constraint;
drop table cameras cascade constraint;
drop table rhythm cascade constraint;
drop sequence baby_num_sequence;
drop sequence act_num_sequence;
drop sequence ca_num_sequence;
drop sequence po_num_sequence;
drop sequence ch_num_sequence;
drop sequence rh_num_sequence;

create sequence baby_num_sequence
increment by 1
start with 1
maxvalue 9999;

create sequence act_num_sequence
increment by 1
start with 1
maxvalue 9999;

create sequence ca_num_sequence
increment by 1
start with 1
maxvalue 9999;

create sequence po_num_sequence
increment by 1
start with 1
maxvalue 9999;

create sequence ch_num_sequence
increment by 1
start with 1
maxvalue 9999;

create sequence rh_num_sequence
increment by 1
start with 1
maxvalue 9999;

CREATE TABLE "MEMBERS" (
   "EMAIL"   VARCHAR2(100)      NOT NULL,
   "PW"   VARCHAR2(100)      NULL,
   "NAME"   VARCHAR2(100)      NULL,
   "AGE"   NUMBER      NULL,
   "GENDER"   VARCHAR2(100)      NULL
);

CREATE TABLE "POSTS" (
   "PO_NUM"   NUMBER      NOT NULL,
   "PO_TITLE"   VARCHAR2(100)      NULL,
   "PO_IMG"   VARCHAR2(100)      NULL,
   "PO_CONTENT"   VARCHAR2(500)      NULL,
   "IMG_URLS"   VARCHAR2(500)      NULL,
   "OPENYN"   NUMBER      NULL,
   "EMAIL"   VARCHAR2(100)      NOT NULL,
   "PO_TIME"   TIMESTAMP   DEFAULT SYSTIMESTAMP   NULL
);

CREATE TABLE "SENSORS" (
   "CH_NUM"   NUMBER      NOT NULL,
   "TEMPERATURE"   NUMBER      NULL,
   "HUMIDITY"   NUMBER      NULL,
   "CHECK_TIME"   TIMESTAMP   DEFAULT SYSTIMESTAMP   NULL,
   "BABY_NUM"   NUMBER      NOT NULL
);

CREATE TABLE "HISTORY" (
   "ACT_NUM"   NUMBER      NOT NULL,
   "EMAIL"   VARCHAR2(100)      NOT NULL,
   "ACTION"   VARCHAR2(100)      NULL,
   "ACT_TIME"   TIMESTAMP   DEFAULT SYSTIMESTAMP   NULL
);

CREATE TABLE "BABYS" (
   "BABY_NUM"   NUMBER      NOT NULL,
   "TEL"   NUMBER      NULL,
   "BABY_NAME"   VARCHAR2(100)      NULL,
   "BABY_BIRTH"   TIMESTAMP      NULL,
   "BABY_GENDER"   VARCHAR2(100)      NULL,
   "EMAIL"   VARCHAR2(100)      NOT NULL
);

CREATE TABLE "CAMERAS" (
   "CA_NUM"   NUMBER      NOT NULL,
   "CA_IP"   NUMBER      NULL,
   "EMAIL"   VARCHAR2(100)      NOT NULL
);

CREATE TABLE "RHYTHM" (
   "RH_NUM"   NUMBER      NOT NULL,
   "BABY_NUM"   NUMBER      NOT NULL,
   "RH_CATEGORY"   VARCHAR2(100)      NULL,
   "RH_TITLE"   VARCHAR2(100)      NULL,
   "RH_CONTENT"   VARCHAR2(100)      NULL,
   "RH_TIME"   TIMESTAMP   DEFAULT SYSTIMESTAMP   NULL
);

COMMENT ON COLUMN "RHYTHM"."RH_CATEGORY" IS '수면, 배변, 취침 선택저장';

ALTER TABLE "MEMBERS" ADD CONSTRAINT "PK_MEMBERS" PRIMARY KEY (
   "EMAIL"
);

ALTER TABLE "POSTS" ADD CONSTRAINT "PK_POSTS" PRIMARY KEY (
   "PO_NUM"
);

ALTER TABLE "SENSORS" ADD CONSTRAINT "PK_SENSORS" PRIMARY KEY (
   "CH_NUM"
);

ALTER TABLE "HISTORY" ADD CONSTRAINT "PK_HISTORY" PRIMARY KEY (
   "ACT_NUM"
);

ALTER TABLE "BABYS" ADD CONSTRAINT "PK_BABYS" PRIMARY KEY (
   "BABY_NUM"
);

ALTER TABLE "CAMERAS" ADD CONSTRAINT "PK_CAMERAS" PRIMARY KEY (
   "CA_NUM"
);

ALTER TABLE "RHYTHM" ADD CONSTRAINT "PK_RHYTHM" PRIMARY KEY (
   "RH_NUM"
);

ALTER TABLE "POSTS" ADD CONSTRAINT "FK_MEMBERS_TO_POSTS_1" FOREIGN KEY (
   "EMAIL"
)
REFERENCES "MEMBERS" (
   "EMAIL"
);

ALTER TABLE "SENSORS" ADD CONSTRAINT "FK_BABYS_TO_SENSORS_1" FOREIGN KEY (
   "BABY_NUM"
)
REFERENCES "BABYS" (
   "BABY_NUM"
);

ALTER TABLE "HISTORY" ADD CONSTRAINT "FK_MEMBERS_TO_HISTORY_1" FOREIGN KEY (
   "EMAIL"
)
REFERENCES "MEMBERS" (
   "EMAIL"
);

ALTER TABLE "BABYS" ADD CONSTRAINT "FK_MEMBERS_TO_BABYS_1" FOREIGN KEY (
   "EMAIL"
)
REFERENCES "MEMBERS" (
   "EMAIL"
);

ALTER TABLE "CAMERAS" ADD CONSTRAINT "FK_MEMBERS_TO_CAMERAS_1" FOREIGN KEY (
   "EMAIL"
)
REFERENCES "MEMBERS" (
   "EMAIL"
);

ALTER TABLE "RHYTHM" ADD CONSTRAINT "FK_BABYS_TO_RHYTHM_1" FOREIGN KEY (
   "BABY_NUM"
)
REFERENCES "BABYS" (
   "BABY_NUM"
);

insert into members values ('admin', 123, '관리자', 20, '남자');
insert into babys values (baby_num_sequence.nextval, 56987234, 'baby', '2020-10-07' , '남자' , 'admin');
insert into posts(po_num, po_title, po_content, openyn, email) values (po_num_sequence.nextval, 'test', 'test', 0, 'admin');
insert into sensors(ch_num, temperature, humidity, baby_num) values (ch_num_sequence.nextval, 20, 20, 1);
insert into history(act_num, email, Action) values (act_num_sequence.nextval, 'admin', '울음발생');
insert into cameras values (ca_num_sequence.nextval, 127000000001, 'admin');
insert into rhythm(rh_num, baby_num, rh_category, rh_title, rh_content) values (rh_num_sequence.nextval, 1, '식사', '아침식사' , '아침을 잘 먹었어요');