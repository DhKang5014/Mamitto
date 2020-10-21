

drop table members cascade constraint;
drop table posts cascade constraint;
drop table sensors cascade constraint;
drop table history cascade constraint;
drop table babys cascade constraint;
drop table rhythm cascade constraint;
drop sequence act_num_sequence;
drop sequence po_num_sequence;
drop sequence ch_num_sequence;
drop sequence rh_num_sequence;

create sequence act_num_sequence
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

ALTER TABLE "BABYS" ADD CONSTRAINT "FK_MEMBERS_TO_BABYS_1" FOREIGN KEY (
	"EMAIL"
)
REFERENCES "MEMBERS" (
	"EMAIL"
);

select * from rhythm;

select * from history;


insert into history values(act_num_sequence.nextval, '울음', sysdate, 1, '123');
insert into history values(act_num_sequence.nextval, '울음', sysdate, 2, '123');
insert into history values(act_num_sequence.nextval, '낙상', sysdate, 2, '123');
insert into history values(act_num_sequence.nextval, '낙상', sysdate, 1, '123');