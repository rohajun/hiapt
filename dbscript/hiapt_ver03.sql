--ȫ���� ----------------------------------------------------------------------
DROP TABLE aptuser cascade CONSTRAINTS;

CREATE TABLE aptuser (
	userid	VARCHAR2(10)		NOT NULL,
  userpwd varchar2(10) not null,
	username	VARCHAR2(20)		NOT NULL,
	userenroll	DATE	DEFAULT SYSDATE	NOT NULL,
	userbirth	DATE		NULL,
	userphone	VARCHAR2(50)		NOT NULL,
	useremail	varchar2(50)		NULL,
	useretc	varchar2(500)		NULL,
	cartype	varchar2(50)		NULL,
	carno	varchar2(50)		NULL,
	carenroll	date	DEFAULT sysdate	NULL,
  
  CONSTRAINT aptuser_pk PRIMARY KEY (userid)
);

COMMENT ON COLUMN aptuser.userid IS '��ȣ��';

COMMENT ON COLUMN aptuser.userpwd IS '��й�ȣ';

COMMENT ON COLUMN aptuser.username IS '�����ָ�';

COMMENT ON COLUMN aptuser.userenroll IS '������';

COMMENT ON COLUMN aptuser.userbirth IS '�������';

COMMENT ON COLUMN aptuser.userphone IS '����ó';

COMMENT ON COLUMN aptuser.useremail IS '�̸���';

COMMENT ON COLUMN aptuser.useretc IS '�޸�';

COMMENT ON COLUMN aptuser.cartype IS '����';

COMMENT ON COLUMN aptuser.carno IS '������ȣ';

COMMENT ON COLUMN aptuser.carenroll IS '�����';

insert into aptuser(userid,	userpwd, username,	userenroll,	userbirth,	userphone,	useremail,	useretc,	cartype,	carno,	carenroll)
values('101-101', '101-101', '������1', sysdate, '1992-10-02', '010-6547-3214', 'dlqwnwk@naver.com', 'ù��° �������Դϴ�.', 'Ƽ����', '32�� 3210', sysdate);

insert into aptuser(userid,	userpwd, username,	userenroll,	userbirth,	userphone,	useremail,	useretc,	cartype,	carno,	carenroll)
values('101-102', '101-102', '���̿�', sysdate, '1992-07-30', '010-8989-6209', 'rnaldud89@gmail.com', '�ι�° �������Դϴ�.', 'GV80', '89�� 8962', sysdate);

insert into aptuser(userid,	userpwd, username,	userenroll,	userbirth,	userphone,	useremail,	useretc,	cartype,	carno,	carenroll)
values('102-101', '102-101', '������', sysdate, '1992-08-05', '010-8431-1257', 'ess5700@naver.com', '����° �������Դϴ�.', '���Ϻ�', '84�� 3112', sysdate);

insert into aptuser(userid,	userpwd, username,	userenroll,	userbirth,	userphone,	useremail,	useretc,	cartype,	carno,	carenroll)
values('201-101', '201-101', '�̿���', sysdate, '1992-04-12', '010-6393-9273', 'dldudtn118@naver.com', '�׹�° �������Դϴ�.', '������', '63�� 9392', sysdate);

insert into aptuser(userid,	userpwd, username,	userenroll,	userbirth,	userphone,	useremail,	useretc,	cartype,	carno,	carenroll)
values('201-201', '201-201', '������', sysdate, '1992-05-25', '010-8001-6812', 'dd55555bb@gmail.com', '�ټ���° �������Դϴ�.', '�ڳ�', '80�� 0168', sysdate);

insert into aptuser(userid,	userpwd, username,	userenroll,	userbirth,	userphone,	useremail,	useretc,	cartype,	carno,	carenroll)
values('202-101', '202-101', '����', sysdate, '1992-01-14', '010-2685-4111', 'horse4797@naver.com', '������° �������Դϴ�.', '����Ƽ��', '85�� 8541', sysdate);

insert into aptuser(userid,	userpwd, username,	userenroll,	userbirth,	userphone,	useremail,	useretc,	cartype,	carno,	carenroll)
VALUES('202-201', '202-201', 'ȫ����', SYSDATE, '1992-09-21', '010-2291-5428', 'someday921@nate.com', '�ϰ���° �������Դϴ�.', '�ڶ���', '91�� 9154', SYSDATE);


-------------------------------------------------------------------------------------------------------------------------------------------------------

DROP TABLE employee cascade CONSTRAINTS;

CREATE TABLE employee (
	empno	varchar2(20)		NOT NULL,
  emppwd varchar2(20) NOT NULL,
	empname	varchar2(20)		NOT NULL,
	empid	varchar2(20)		NOT NULL,
	emphiredate	date	DEFAULT sysdate	NOT NULL,
	empphone	varchar2(50)		NOT NULL,
	empssn	varchar2(50)		NOT NULL,
	empaddress	varchar2(100)		NOT NULL,
	empemail	varchar2(50)		UNIQUE NOT NULL,
  empfamily number NOT NULL,
	empetc	varchar2(500)		NULL,
	salary	number		NOT NULL,
	pension	number		NULL,
	insurance	number		NULL,
	longins	number		NULL,
	hireins	number		NULL,
	incometax	number		NULL,
	localtax	number		NULL,
  
  CONSTRAINT employee_pk PRIMARY KEY (empno)
);

COMMENT ON COLUMN employee.empno IS '���';

COMMENT ON COLUMN employee.emppwd IS '��й�ȣ';

COMMENT ON COLUMN employee.empname IS '�̸�';

COMMENT ON COLUMN employee.empid IS '����';

COMMENT ON COLUMN employee.emphiredate IS '�Ի���';

COMMENT ON COLUMN employee.empphone IS '�޴���ȭ';

COMMENT ON COLUMN employee.empssn IS '�ֹι�ȣ';

COMMENT ON COLUMN employee.empaddress IS '�ּ�';

COMMENT ON COLUMN employee.empemail IS '�̸���';

COMMENT ON COLUMN employee.empfamily IS '�ξ簡����';

COMMENT ON COLUMN employee.empetc IS '��Ÿ����';

COMMENT ON COLUMN employee.salary IS '�⺻��';

COMMENT ON COLUMN employee.pension IS '���ο���';

COMMENT ON COLUMN employee.insurance IS '�ǰ�����';

COMMENT ON COLUMN employee.longins IS '����纸��';

COMMENT ON COLUMN employee.hireins IS '��뺸��';

COMMENT ON COLUMN employee.incometax IS '�ҵ漼';

COMMENT ON COLUMN employee.localtax IS '����ҵ漼';

insert into employee(empno, emppwd, empname, empid, emphiredate, empphone, empssn, empaddress, empemail, empfamily, empetc, 
salary, pension, insurance, longins, hireins) 
values('admin', 'admin', '������', '������', sysdate, '010-1234-5678', '921002-1234567', '����Ư���� �������126', 'abc@naver.com', 0, '�������Դϴ�.', 
8500000, 0.045, 0.323, 0.04255, 0.065);

insert into employee(empno, emppwd, empname, empid, emphiredate, empphone, empssn, empaddress, empemail, empfamily, empetc, 
salary, pension, insurance, longins, hireins) 
values('S001', 'S001', '�躸��', '��������', sysdate, '010-7410-8520', '891115-9876543', '����Ư���� ���α� 54', 'qwrds@daum.net', 0, '���������Դϴ�.', 
3000000, 0.045, 0.323, 0.04255, 0.065);

insert into employee(empno, emppwd, empname, empid, emphiredate, empphone, empssn, empaddress, empemail, empfamily, empetc, 
salary, pension, insurance, longins, hireins) 
values('A001', 'A001', '�̰渮', '�渮', sysdate, '010-9876-5432', '900215-4567125', '��õ������ ������ 21', 'rudfl@daum.net', 0, '�渮�Դϴ�.', 
3000000, 0.045, 0.323, 0.04255, 0.065);

insert into employee(empno, emppwd, empname, empid, emphiredate, empphone, empssn, empaddress, empemail, empfamily, empetc, 
salary, pension, insurance, longins, hireins) 
values('F001', 'F001', '�ڼ���', '�������', sysdate, '010-2145-5647', '850319-7425632', '��⵵ ������ 96', 'tjfql@gmail.com', 0, '��������Դϴ�.', 
3000000, 0.045, 0.323, 0.04255, 0.065);

insert into employee(empno, emppwd, empname, empid, emphiredate, empphone, empssn, empaddress, empemail, empfamily, empetc, 
salary, pension, insurance, longins, hireins) 
values('R001', 'R001', '����ħ', '��ħ���', sysdate, '010-3658-7854', '840522-2365897', '���ϵ� ���̽� 88', 'rjacla@gmail.com', 0, '��ħ����Դϴ�.', 
3000000, 0.045, 0.323, 0.04255, 0.065);

commit;
--��--------------------------------------------------------------------------------------------------------------------------------------------------
drop table SCHEDULE;

CREATE TABLE SCHEDULE (
	SCH_NO  	NUMBER	CONSTRAINT SCH_PK PRIMARY KEY,
	SCH_TITLE	VARCHAR2(30)		NOT NULL,
	SCH_TYPE	VARCHAR2(10)	 DEFAULT '����' NOT NULL,
	SCH_START	DATE		NOT NULL,
	SCH_END	DATE 	NOT NULL,
	SCH_MEMO	VARCHAR2(100)	 NULL,
	SCH_OPEN	CHAR(1)		DEFAULT 'N' NOT NULL,
	SCH_ALARM CHAR(1)		DEFAULT 'N' NOT NULL,
	SCH_COLOR	VARCHAR2(20)		DEFAULT 'GRAY' NOT NULL,
  IMPORTANCE CHAR(1) DEFAULT '2',
	EMPNO	VARCHAR2(20)	 NOT NULL,
  
  CONSTRAINT EMPNO_FK FOREIGN KEY(EMPNO) REFERENCES EMPLOYEE ON DELETE CASCADE
);
COMMENT ON COLUMN SCHEDULE.SCH_NO IS '������ȣ';

COMMENT ON COLUMN SCHEDULE.SCH_TITLE IS '������';

COMMENT ON COLUMN SCHEDULE.SCH_TYPE IS '����';

COMMENT ON COLUMN SCHEDULE.SCH_END IS '������';

COMMENT ON COLUMN SCHEDULE.SCH_END IS '������';

COMMENT ON COLUMN SCHEDULE.SCH_MEMO IS '�޸�';

COMMENT ON COLUMN SCHEDULE.SCH_OPEN IS '��������';

COMMENT ON COLUMN SCHEDULE.SCH_ALARM IS '�˶�����';

COMMENT ON COLUMN SCHEDULE.SCH_COLOR IS '����';

COMMENT ON COLUMN SCHEDULE.EMPNO IS '���';

COMMENT ON COLUMN SCHEDULE.IMPORTANCE IS '�߿䵵';

DROP SEQUENCE SCH_SEQ;

CREATE SEQUENCE SCH_SEQ
START WITH 1
INCREMENT BY 1
NOMAXVALUE
NOCYCLE  
NOCACHE;

INSERT INTO SCHEDULE VALUES(SCH_SEQ.NEXTVAL, '���ֹ�ȸ��', DEFAULT, TO_DATE(20191004), TO_DATE(20191004), '11�� 3��', 'Y', DEFAULT, DEFAULT, DEFAULT, 'admin'); 
INSERT INTO SCHEDULE VALUES(SCH_SEQ.NEXTVAL, '��û�湮', DEFAULT, TO_DATE(20191001), TO_DATE(20191001), '3�ÿ� �ܱ�', DEFAULT, DEFAULT, DEFAULT, DEFAULT, 'A001'); 
INSERT INTO SCHEDULE VALUES(SCH_SEQ.NEXTVAL, '101����ħ', DEFAULT, TO_DATE(20190930), TO_DATE(20190930), '101�� ��ħ����', DEFAULT, DEFAULT, DEFAULT, DEFAULT, 'R001'); 
INSERT INTO SCHEDULE VALUES(SCH_SEQ.NEXTVAL, '2���� ����������', DEFAULT, TO_DATE(20190928), TO_DATE(20190928), '2���� ��������', DEFAULT, DEFAULT, DEFAULT, DEFAULT, 'F001'); 
INSERT INTO SCHEDULE VALUES(SCH_SEQ.NEXTVAL, 'CCTV����', DEFAULT, TO_DATE(20191002), TO_DATE(20191002), 'CCTV ����', DEFAULT, DEFAULT, DEFAULT, DEFAULT, 'S001'); 

commit;
--������-----------------------------------------------------------------------------------------------
DROP TABLE RECEIPT;

DROP TABLE PAYMENT;

DROP TABLE BILL;

DROP TABLE VBANK;

DROP TABLE SMS;

DROP VIEW RECEIPT_VIEW;

DROP VIEW BASE_VIEW;

DROP VIEW IMPOSE_VIEW;

DROP VIEW IMPOSE_END_VIEW;

DROP VIEW BILL_VIEW;

commit;

-- BILL ���̺� ����(NULL��)
create table bill(
	MERCHANT_UID NUMBER		NOT NULL,
  USERID 	VARCHAR2(10)		NOT NULL,
	USERNAME VARCHAR2(20)		NULL,
	BILL_YEAR_MONTH	DATE NULL,
	CALCULATE_START_DAY	DATE NULL,
	CALCULATE_END_DAY	DATE NULL,
	IMPOSE_END_DATE DATE NULL,	
	ACCEPT_DATE	DATE NULL,
  CUTOFF_DATE	DATE NULL,
	IMPOSE_STATUS	VARCHAR2(12) NULL,
	IMPOSE_COUNT NUMBER DEFAULT 0	NULL,
	IMPOSE_FINISH	CHAR	DEFAULT 'N'	NULL,
	GENERAL_COST 	NUMBER	DEFAULT 0	NULL,
  guard_cost 	NUMBER	DEFAULT 0	NULL,
	clean_cost	 NUMBER	DEFAULT 0	NULL,
	DISINFECT_COST 	NUMBER	DEFAULT 0	NULL,
	ELEVATOR_COST 	NUMBER	DEFAULT 0	NULL,
	REPAIR_COST 	NUMBER	DEFAULT 0	NULL,
	commission 	NUMBER	DEFAULT 0	NULL,
	FIREINSURANCE_COST	NUMBER	DEFAULT 0	NULL,	
	electric_cost 	NUMBER	DEFAULT 0	NULL,	
	TV_COST	NUMBER	DEFAULT 2500	NULL,
  WATER_COST 	NUMBER	DEFAULT 0	NULL,
	heating_cost 	NUMBER	DEFAULT 0	NULL,
	HWATER_COST	NUMBER	DEFAULT 0	NULL,	  
  ALLELECTRIC_COAT	NUMBER	DEFAULT 0	NULL,	
  ALLWATER_COST 	NUMBER	DEFAULT 0	NULL,  
	ELECTRIC_USAGE 	NUMBER	DEFAULT 0	NULL,	
	water_usage	NUMBER	DEFAULT 0	NULL,
  HEATING_USAGE	NUMBER	DEFAULT 0	NULL,  
	HWATER_USAGE 	NUMBER	DEFAULT 0	NULL,  
	ARREARS	NUMBER DEFAULT 0 NULL,  
	ETC	VARCHAR2(20) NULL,
	VBANK_NUM	VARCHAR2(20) NULL,
  CONSTRAINT PK_BILL PRIMARY KEY(MERCHANT_UID), 
  CONSTRAINT CK_BILL CHECK (IMPOSE_FINISH IN ('Y', 'N'))
);

--  BILL COMMENT
COMMENT ON COLUMN bill.merchant_uid IS '������������ȣ';
COMMENT ON COLUMN bill.userid IS '��/ȣ��';
COMMENT ON COLUMN BILL.USERNAME IS '�̸�';
COMMENT ON COLUMN BILL.BILL_YEAR_MONTH IS '�������ΰ���';
COMMENT ON COLUMN BILL.CALCULATE_START_DAY IS '����Ⱓ������';
COMMENT ON COLUMN BILL.CALCULATE_END_DAY IS '����Ⱓ������';
COMMENT ON COLUMN BILL.IMPOSE_END_DATE IS '�ΰ�������';
COMMENT ON COLUMN bill.accept_date IS '����Ƿ��Ͻ�';
COMMENT ON COLUMN bill.cutoff_date IS '���θ�����';
COMMENT ON COLUMN bill.impose_status IS '�ΰ�����';
COMMENT ON COLUMN bill.impose_count IS '�ΰ�����Ƚ��';
COMMENT ON COLUMN BILL.IMPOSE_FINISH IS '�ΰ��Ϸ�';
COMMENT ON COLUMN bill.general_cost IS '�Ϲݰ�����';
COMMENT ON COLUMN bill.clean_cost IS 'û�Һ�';
COMMENT ON COLUMN bill.disinfect_cost IS '�ҵ���';
COMMENT ON COLUMN bill.elevator_cost IS '�°���������';
COMMENT ON COLUMN bill.repair_cost IS '����������';
COMMENT ON COLUMN BILL.GUARD_COST IS '����';
COMMENT ON COLUMN bill.fireinsurance_cost IS 'ȭ�纸���';
COMMENT ON COLUMN BILL.COMMISSION IS '��Ź����������';
COMMENT ON COLUMN bill.electric_cost IS '���������';
COMMENT ON COLUMN bill.allelectric_coat IS '���������';
COMMENT ON COLUMN bill.tv_cost IS 'TV���ŷ�';
COMMENT ON COLUMN bill.heating_cost IS '�������';
COMMENT ON COLUMN bill.hwater_cost IS '�¼�����';
COMMENT ON COLUMN bill.water_cost IS '���������';
COMMENT ON COLUMN BILL.ALLWATER_COST IS '����������';
COMMENT ON COLUMN bill.electric_usage IS '�����뷮';
COMMENT ON COLUMN bill.heating_usage IS '�����뷮';
COMMENT ON COLUMN BILL.HWATER_USAGE IS '�¼���뷮';
COMMENT ON COLUMN bill.water_usage IS '������뷮';
COMMENT ON COLUMN bill.arrears IS '�̳���';
COMMENT ON COLUMN BILL.ETC IS '���';
COMMENT ON COLUMN BILL.VBANK_NUM IS '���¹�ȣ';
--------------------------------------------------------------
DROP SEQUENCE BILL_SEQ;
--BILL ������ ����
CREATE SEQUENCE BILL_SEQ
START WITH 10000000000001
INCREMENT BY 1
MAXVALUE 90000000000000
MINVALUE 1
NOCYCLE
NOCACHE;

-- bill insert
INSERT INTO BILL VALUES(
BILL_SEQ.NEXTVAL,'201-201','������','2019/09/01',
'2019/08/01','2019/08/31','2019/08/31','2019/08/31','2019/09/30',
  '�Ϸ�',1,'Y',
  20690, 20600, 13470, 760, 3290, 2090, 650, 960,
  73510, 13970, DEFAULT, 0, 0, 1710, 860,
  404, 15, 0, 0,DEFAULT, NULL,'110-23-0310818'
);

INSERT INTO BILL VALUES(
BILL_SEQ.NEXTVAL,'201-201','������','2019/08/01',
'2019/07/01','2019/07/31','2019/07/31','2019/07/31','2019/08/31',
  '�Ϸ�',1,'Y',
  20520, 20870, 13500, 770, 3920, 2080, 650, 960,
  73510, 2140, DEFAULT, 0, 0, 1710, 860,
  404, 32, 0, 0,DEFAULT, NULL,'110-23-0310818'
);

INSERT INTO BILL VALUES(
BILL_SEQ.NEXTVAL,'202-101','����','2019/08/01',
'2019/07/01','2019/07/31','2019/07/31','2019/07/31','2019/08/31',
  '�Ϸ�',1,'Y',
  29040, 29530, 19110, 1080, 4660, 2940, 2570, 910,
  73510, 2140, DEFAULT, 0, 0, 1710, 860,
  404, 32, 0, 0,DEFAULT, NULL,'110-23-0310818'
);

INSERT INTO BILL VALUES(
BILL_SEQ.NEXTVAL,'201-201','������','2019/07/01',
'2019/06/01','2019/06/30','2019/06/30','2019/06/30','2019/07/31',
  '�Ϸ�',1,'Y',
  20390, 20870, 13500, 770, 3290, 1810, 650, 810,
  73510, 13830, DEFAULT, 0, 0, 1610, 890,
  404, 15, 0, 0,DEFAULT, NULL,'110-23-0310818'
);

INSERT INTO BILL VALUES(
BILL_SEQ.NEXTVAL,'201-201','������','2019/06/01',
'2019/05/01','2019/05/31','2019/05/31','2019/05/31','2019/06/30',
  '�Ϸ�',1,'Y',
  20690, 20600, 13470, 760, 3290, 2090, 650, 960,
  73510, 13830, DEFAULT, 0, 0, 1850, 860,
  404, 15, 0, 0,DEFAULT, NULL,'110-23-0310818'
);

INSERT INTO BILL VALUES(
BILL_SEQ.NEXTVAL,'201-201','������','2019/05/01',
'2019/04/01','2019/04/30','2019/04/30','2019/04/30','2019/05/31',
  '�Ϸ�',1,'Y',
  20690, 20600, 13470, 760, 3290, 2090, 650, 960,
  73510, 13830, DEFAULT, 0, 0, 1850, 860,
  404, 15, 0, 0,DEFAULT, NULL,'110-23-0310818'
);

INSERT INTO BILL VALUES(
BILL_SEQ.NEXTVAL,'201-201','������','2019/04/01',
'2019/03/01','2019/03/31','2019/03/31','2019/03/31','2019/04/30',
  '�Ϸ�',1,'Y',
  20690, 20600, 13470, 760, 3290, 2090, 650, 960,
  73510, 13830, DEFAULT, 9680, 23100, 1850, 860,
  404, 15,1.2, 5.5,DEFAULT, NULL,'110-23-0310818'
);

INSERT INTO BILL VALUES(
BILL_SEQ.NEXTVAL,'201-201','������','2019/03/01',
'2019/02/01','2019/02/28','2019/02/28','2019/02/28','2019/03/31',
  '�Ϸ�',1,'Y',
  20690, 20600, 13470, 760, 3290, 2090, 650, 960,
  73510, 13830, DEFAULT, 12280, 31820, 1850, 860,
  404, 15,1.5, 6.5,DEFAULT, NULL,'110-23-0310818'
);

INSERT INTO BILL VALUES(
BILL_SEQ.NEXTVAL,'201-201','������','2019/02/01',
'2019/01/01','2019/01/31','2019/01/31','2019/01/31','2019/02/28',
  '�Ϸ�',1,'Y',
  20690, 20600, 13470, 760, 3290, 2090, 650, 960,
  86410, 16300, DEFAULT, 60760, 42000, 1850, 860,
  410, 27, 37, 12,DEFAULT, NULL,'110-23-0310818'
);

INSERT INTO BILL VALUES(
BILL_SEQ.NEXTVAL,'201-201','������','2019/01/01',
'2018/12/01','2018/12/31','2018/12/31','2018/12/31','2019/01/31',
  '�Ϸ�',1,'Y',
  20690, 20600, 13470, 760, 3290, 2090, 650, 960,
  86410, 16300, DEFAULT, 60760, 42000, 1850, 860,
  410, 27, 37, 12,DEFAULT, NULL,'110-23-0310818'
);

INSERT INTO BILL VALUES(
BILL_SEQ.NEXTVAL,'201-201','������','2018/12/01',
'2018/11/01','2018/11/30','2018/11/30','2018/11/30','2018/12/31',
  '�Ϸ�',1,'Y',
  20690, 20600, 13470, 760, 3290, 2090, 650, 960,
  86410, 16300, DEFAULT, 23547, 15034, 1850, 860,
  410, 27, 17, 5,DEFAULT, NULL,'110-23-0310818'
);

INSERT INTO BILL VALUES(
BILL_SEQ.NEXTVAL,'201-201','������','2018/11/01',
'2018/10/01','2018/10/31','2018/10/31','2018/10/31','2018/11/30',
  '�Ϸ�',1,'Y',
  20690, 20600, 13470, 760, 3290, 2090, 650, 960,
  86410, 16300, DEFAULT, 15300, 12000, 1850, 860,
  410, 27, 12, 10,DEFAULT, NULL,'110-23-0310818'
);


INSERT INTO BILL VALUES(
BILL_SEQ.NEXTVAL,'201-201','������','2018/10/01',
'2018/09/01','2018/09/30','2018/09/30','2018/09/30','2018/10/31',
  '�Ϸ�',1,'Y',
  20690, 20600, 13470, 760, 3290, 2090, 650, 960,
  52770, 20850, DEFAULT, 4470, 6090, 1850, 860,
  386, 15, 12, 4,DEFAULT, NULL,'110-23-0310818'
);

INSERT INTO BILL VALUES(
BILL_SEQ.NEXTVAL,'201-201','������','2018/09/01',
'2018/08/01','2018/08/31','2018/08/31','2018/08/31','2018/09/30',
  '�Ϸ�',1,'Y',
  20690, 20600, 13470, 760, 3290, 2090, 650, 960,
  52770, 20850, DEFAULT, 4470, 6090, 1850, 860,
  386, 15, 12, 4,DEFAULT, NULL,'110-23-0310818'
);

INSERT INTO BILL VALUES(
BILL_SEQ.NEXTVAL,'202-101','����','2018/11/01',
'2018/10/01','2018/10/31','2018/10/31','2018/10/31','2018/11/30',
  '�Ϸ�',1,'Y',
 29290, 29310, 19110, 1080, 4660, 2950, 2420, 1200,
  86410, 16300, DEFAULT, 15300, 12000, 1850, 860,
  410, 27, 12, 10,DEFAULT, NULL,'110-23-0310818'
);

INSERT INTO BILL VALUES(
BILL_SEQ.NEXTVAL,'202-101','����','2018/10/01',
'2018/09/01','2018/09/30','2018/09/30','2018/09/30','2018/10/31',
  '�Ϸ�',1,'Y',
  20690, 20600, 13470, 760, 3290, 2090, 650, 960,
  52770, 20850, DEFAULT, 4470, 6090, 1850, 860,
  386, 15, 12, 4,DEFAULT, NULL,'110-23-0310818'
);

INSERT INTO BILL VALUES(
BILL_SEQ.NEXTVAL,'202-101','����','2018/09/01',
'2018/08/01','2018/08/31','2018/08/31','2018/08/31','2018/09/30',
  '�Ϸ�',1,'Y',
  29290, 29310, 19110, 1080, 4660, 2950, 2420, 1200,
  52770, 20850, DEFAULT, 4470, 6090, 1850, 860,
  386, 15, 12, 4,DEFAULT, NULL,'110-23-0310818'
);

----------------------------------------------------------------------------
DROP TABLE vbank;
-- ������� ���̺� ����
CREATE TABLE VBANK (
	VBANK_NUM	VARCHAR2(20) NOT NULL,
	VBANK_NAME VARCHAR2(20) NOT NULL,
	VBANK_HOLDER VARCHAR2(15) DEFAULT '���̾���Ʈ'	NOT NULL,
	VBANK_DATE DATE NULL,
  CONSTRAINT PK_VB PRIMARY KEY(VBANK_NUM)
);

-- COMMENT ����
COMMENT ON COLUMN vbank.vbank_num IS '���¹�ȣ';
COMMENT ON COLUMN vbank.vbank_name IS '�����';
COMMENT ON COLUMN VBANK.VBANK_HOLDER IS '������';
COMMENT ON COLUMN VBANK.VBANK_DATE IS '�Աݱ���';

-- vbank insert

INSERT INTO VBANK VALUES(
'110-23-0310818', '��������', DEFAULT, '19/09/30'
);

INSERT INTO VBANK VALUES(
'763201-01-148210', '��������', DEFAULT, '19/09/30'
);

INSERT INTO VBANK VALUES(
'175320-51-018603', '�ϳ�����', DEFAULT, '19/09/30'
);

INSERT INTO VBANK VALUES(
'402172-01-001467', '��ü��', DEFAULT, '19/09/30'
);

----------------------------------------------------------------------------
-- SMS ���̺� ����\
drop table sms;

CREATE TABLE SMS (
	EMPNO	VARCHAR2(20) NOT NULL,
	TEL	VARCHAR2(12)	DEFAULT '02-751-1114'	NOT NULL,
	userphone	VARCHAR2(20)		NOT NULL,
	TEXT	VARCHAR2(80)		NULL,
	TYPE	VARCHAR2(10)	DEFAULT 'SMS'	NULL,
	STATE_MESSAGE	VARCHAR2(10)		NULL,
	COUNTRY	VARCHAR2(5)	DEFAULT '82'	NOT NULL,
	STATUS_CODE	VARCHAR2(5)		NOT NULL,
  CONSTRAINT FK_EMPLOYEE FOREIGN KEY(EMPNO) REFERENCES EMPLOYEE(EMPNO) ON DELETE CASCADE
);

COMMENT ON COLUMN SMS.EMPNO IS '���';
COMMENT ON COLUMN SMS.TEL IS '�����Ҵ�ǥ��ȣ';
COMMENT ON COLUMN SMS.userphone IS '�߽��ڹ�ȣ';
COMMENT ON COLUMN SMS.text IS '�޼���';
COMMENT ON COLUMN SMS.type IS '�޼���Ÿ��';
COMMENT ON COLUMN SMS.state_message IS '��������';
COMMENT ON COLUMN SMS.COUNTRY IS '������ȣ';
COMMENT ON COLUMN SMS.status_code IS '�����ڵ�';

-- insert sms
INSERT INTO SMS VALUES(
 'S001', DEFAULT, '010-6547-3214', 
 '2019��08���� ������������Դϴ�.',
 DEFAULT, '����', DEFAULT, '2000' 
);

INSERT INTO SMS VALUES(
 'S001', DEFAULT, '010-6547-3214', 
 '2019��07���� ������������Դϴ�.',
 DEFAULT, '����', DEFAULT, '2000' 
);

INSERT INTO SMS VALUES(
 'S001', DEFAULT, '010-6547-3214', 
 '2019��06���� ������������Դϴ�.',
 DEFAULT, '����', DEFAULT, '2000' 
);

INSERT INTO SMS VALUES(
 'S001', DEFAULT, '010-6547-3214', 
 '2019��05���� ������������Դϴ�.',
 DEFAULT, '����', DEFAULT, '2000' 
);

INSERT INTO SMS VALUES(
 'S001', DEFAULT, '010-6547-3214', 
 '2019��04���� ������������Դϴ�.',
 DEFAULT, '����', DEFAULT, '2000' 
);

------------------------------------------------------------------------------
-- PAYMENT ���̺� ����

CREATE TABLE PAYMENT (
	MERCHANT_UID	NUMBER		NOT NULL,
	name	VARCHAR2(20)	DEFAULT '�����������'	NOT NULL,
	AMOUNT	NUMBER		NOT NULL,
	currency	VARCHAR2(10)	DEFAULT 'KRW'	NOT NULL,
	PG	VARCHAR2(30)		NOT NULL,
	pay_method	VARCHAR2(50)	DEFAULT 'card'	NOT NULL,
	card_quota	NUMBER		NULL,
	buyer_name	VARCHAR2(20)		NULL,
	BUYER_TEL	VARCHAR2(20)		NOT NULL,
	BUYER_EMAIL	VARCHAR2(50)		NULL
);

-- comment
COMMENT ON COLUMN payment.merchant_uid IS '������������ȣ';
COMMENT ON COLUMN payment.name IS '��������';
COMMENT ON COLUMN payment.amount IS '�����ݾ�';
COMMENT ON COLUMN payment.currency IS 'ȭ�����';
COMMENT ON COLUMN payment.pg IS 'PG';
COMMENT ON COLUMN payment.pay_method IS '��������';
COMMENT ON COLUMN payment.card_quota IS '�Һαݾ�';
COMMENT ON COLUMN payment.buyer_name IS '�������̸�';
COMMENT ON COLUMN PAYMENT.BUYER_TEL IS '�����ڿ���ó';
COMMENT ON COLUMN payment.buyer_email IS '�������̸���';

-- INSERT PAYMENT

INSERT INTO PAYMENT VALUES(
'10000000000001', DEFAULT, 152560, DEFAULT, 'PG', '�������',
NULL, '������', '010-8001-6812', 'dd55555bb@gmail.com'
);

INSERT INTO PAYMENT VALUES(
'10000000000002', DEFAULT, 141490, DEFAULT, 'īī������', '�������',
NULL, '������', '010-8001-6812', 'dd55555bb@gmail.com'
);

INSERT INTO PAYMENT VALUES(
'10000000000003', DEFAULT, 168060, DEFAULT, '���̽��������', '�������',
NULL, '����', '010-2685-4111', 'horse4797@naver.com'
);

INSERT INTO PAYMENT VALUES(
'10000000000004', DEFAULT, 151930, DEFAULT, '�̴Ͻý�', 'ī�����',
NULL, '������', '010-8001-6812', 'dd55555bb@gmail.com'
);

INSERT INTO PAYMENT VALUES(
'10000000000005', DEFAULT, 152560, DEFAULT, '���̽��������', 'ī�����',
NULL, '������', '010-8001-6812', 'dd55555bb@gmail.com'
);

INSERT INTO PAYMENT VALUES(
'10000000000006', DEFAULT, 152560, DEFAULT, 'PAYCO', '�������',
NULL, '������', '010-8001-6812', 'dd55555bb@gmail.com'
);

INSERT INTO PAYMENT VALUES(
'10000000000007', DEFAULT, 185340, DEFAULT, 'PAYCO', '�������',
NULL, '������', '010-8001-6812', 'dd55555bb@gmail.com'
);

INSERT INTO PAYMENT VALUES(
'10000000000008', DEFAULT, 196660, DEFAULT, 'LGU+', 'ī��������',
NULL, '������', '010-8001-6812', 'dd55555bb@gmail.com'
);

INSERT INTO PAYMENT VALUES(
'10000000000009', DEFAULT, 270690, DEFAULT, '���̽��������', 'ī�����',
NULL, '������', '010-8001-6812', 'dd55555bb@gmail.com'
);

INSERT INTO PAYMENT VALUES(
'10000000000010', DEFAULT, 270690, DEFAULT, 'PG', '�������',
NULL, '������', '010-8001-6812', 'dd55555bb@gmail.com'
);

INSERT INTO PAYMENT VALUES(
'10000000000011', DEFAULT, 206511, DEFAULT, '���̽��������', 'ī�����',
NULL, '������', '010-8001-6812', 'dd55555bb@gmail.com'
);

INSERT INTO PAYMENT VALUES(
'10000000000012', DEFAULT, 195230, DEFAULT, '�ٳ�', '�ǽð�������ü',
NULL, '������', '010-8001-6812', 'dd55555bb@gmail.com'
);

INSERT INTO PAYMENT VALUES(
'10000000000013', DEFAULT, 149400, DEFAULT, 'LGU+', 'ī�����',
NULL, '������', '010-8001-6812', 'dd55555bb@gmail.com'
);

INSERT INTO PAYMENT VALUES(
'10000000000014', DEFAULT, 149400, DEFAULT, 'KCP', 'ī�����',
NULL, '������', '010-8001-6812', 'dd55555bb@gmail.com'
);

INSERT INTO PAYMENT VALUES(
'10000000000015', DEFAULT, 222740, DEFAULT, 'īī������', '�������',
NULL, '������', '010-8001-6812', 'dd55555bb@gmail.com'
);

-------------------------------------------------------------------------------
-- RECEIPT ���̺� ����
CREATE TABLE RECEIPT (
	imp_uid	VARCHAR2(40)		NOT NULL,
  MERCHANT_UID NUMBER		NOT NULL,
	apply_num	VARCHAR2(40)		NULL,
	VBANK_NUM	VARCHAR2(20)		NULL,
	NAME	VARCHAR2(20)	DEFAULT '�����������'	NOT NULL,
	pay_method	VARCHAR2(30)	DEFAULT 'card'	NOT NULL,
	PAID_AMOUNT	NUMBER		NOT NULL,
	pg_provider	VARCHAR2(40)		NOT NULL,
	pai_dat	DATE		NOT NULL,
	receipt_url	VARCHAR2(100)		NULL,
	buyer_name	VARCHAR2(20)		NULL,
	buyer_tel	VARCHAR2(20)		NOT NULL,
	BUYER_EMAIL	VARCHAR2(30)		NULL,
	company	VARCHAR2(15)	DEFAULT '���̾���Ʈ'	NOT NULL,
	STATUS	VARCHAR2(20)		NOT NULL,	
  CONSTRAINT PK_RECEIPT PRIMARY KEY(IMP_UID)
);

--COMMIT
COMMENT ON COLUMN receipt.imp_uid IS '����������ID';
COMMENT ON COLUMN receipt.apply_num IS 'ī����ι�ȣ';
COMMENT ON COLUMN receipt.vbank_num IS '��������Աݹ�ȣ';
COMMENT ON COLUMN receipt.name IS '��������';
COMMENT ON COLUMN receipt.pay_method IS '��������';
COMMENT ON COLUMN receipt.paid_amount IS '�����ݾ�';
COMMENT ON COLUMN RECEIPT.PG_PROVIDER IS '����PG����';
COMMENT ON COLUMN receipt.pai_dat IS '�������νð�';
COMMENT ON COLUMN receipt.receipt_url IS '������ǥURL';
COMMENT ON COLUMN receipt.buyer_name IS '�������̸�';
COMMENT ON COLUMN receipt.buyer_tel IS '��������ȭ��ȣ';
COMMENT ON COLUMN receipt.buyer_email IS '�������̸���';
COMMENT ON COLUMN receipt.company IS '����Ʈ��';
COMMENT ON COLUMN RECEIPT.STATUS IS '��������';
COMMENT ON COLUMN receipt.merchant_uid IS '������������ȣ';

-- INSERT

INSERT INTO RECEIPT VALUES(
'5d8b920eb1b56e000675bc59', 10000000000015, NULL, NULL, 	
DEFAULT, '�������', 222740, 'īī������', '2018/11/10',	NULL, '������', '010-8001-6812',
'dd55555bb@gmail.com', DEFAULT, '�����Ϸ�' 
);

INSERT INTO RECEIPT VALUES(
'5d8b920eb1b56e000675bc57', 10000000000014, '5d8b920eb1b56e000675bc59', NULL, 	
DEFAULT, 'ī�����', 149400, 'KCP', '2018/09/11',	NULL, '������', '010-8001-6812',
'dd55555bb@gmail.com', DEFAULT, '�����Ϸ�' 
);

INSERT INTO RECEIPT VALUES(
'5d8b904eb1b56e000675bbbd', 10000000000013, '5d8b920eb1b56e000675bc59', NULL, 	
DEFAULT, 'ī�����', 149400, 'LGU+', '2018/10/05',	NULL, '������', '010-8001-6812',
'dd55555bb@gmail.com', DEFAULT, '�����Ϸ�' 
);

INSERT INTO RECEIPT VALUES(
'5d8b95aeb1b56e000675bd6d', 10000000000012, NULL, '110-23-0310818', 	
DEFAULT, '�ǽð�������ü', 195230, '�ٳ�', '2018/11/23',	NULL, '������', '010-1234-2222',
'dd55555bb@gmail.com', DEFAULT, '�����Ϸ�' 
);

INSERT INTO RECEIPT VALUES(
'5d8b8a28b1b56e000675ba80', 10000000000011, '5d8b8a28b1b56e000675ba80', NULL, 	
DEFAULT, 'ī�����', 206511, '���̽��������', '2018/12/23',	NULL, '������', '010-1234-2222',
'dd55555bb@gmail.com', DEFAULT, '�����Ϸ�' 
);

INSERT INTO RECEIPT VALUES(
'5d95c71bb1b56e00068008de', 10000000000010, NULL, '110-23-0310818',	
DEFAULT, '�������', 270690, 'PG', '2019/01/23',	NULL, '������', '010-1234-2222',
'dd55555bb@gmail.com', DEFAULT, '�����Ϸ�' 
);

INSERT INTO RECEIPT VALUES(
'5d95c599b1b56e00068006b9', 10000000000001, NULL, '110-23-0310818',	
DEFAULT, '�������', 152560, 'PG', '2019/09/23',	NULL, '������', '010-1234-2222',
'dd55555bb@gmail.com', DEFAULT, '�����Ϸ�' 
);

INSERT INTO RECEIPT VALUES(
'5d95c4e8b1b56e0006800558', 10000000000002, NULL, NULL, 	
DEFAULT, '�������', 141490, 'īī������', '2019/08/10',	NULL, '������', '010-8001-6812',
'dd55555bb@gmail.com', DEFAULT, '�����Ϸ�' 
);

INSERT INTO RECEIPT VALUES(
'5d95c6e1b1b56e0006800871', 10000000000003, NULL,'110-23-0310818',	
DEFAULT, '�������', 168060, '���̽��������', '2019/08/10',	NULL, '����', '010-2685-4111', 'horse4797@naver.com', DEFAULT, '�����Ϸ�' 
);

INSERT INTO RECEIPT VALUES(
'5d95c4e8b1b56e000680055f', 10000000000004, '5d95c4e8b1b56e000680055f', NULL, 	
DEFAULT, 'ī�����', 151930, '�̴Ͻý�', '2019/07/23',	NULL, '������', '010-1234-2222',
'dd55555bb@gmail.com', DEFAULT, '�����Ϸ�' 
);

INSERT INTO RECEIPT VALUES(
'5d95c5f4b1b56e0006800720', 10000000000005, '5d95c5f4b1b56e0006800720', NULL, 	
DEFAULT, 'ī�����', 152560, '���̽��������', '2019/06/06',	NULL, '������', '010-1234-2222',
'dd55555bb@gmail.com', DEFAULT, '�����Ϸ�' 
);

INSERT INTO RECEIPT VALUES(
'5d95c533b1b56e00068005de', 10000000000006, NULL, NULL, 	
DEFAULT, '�������', 152560, 'PAYCO', '2019/05/10',	NULL, '������', '010-8001-6812',
'dd55555bb@gmail.com', DEFAULT, '�����Ϸ�' 
);

INSERT INTO RECEIPT VALUES(
'5d95c484b1b56e00068004b8', 10000000000007, NULL, NULL, 	
DEFAULT, '�������', 185340, 'PAYCO', '2019/04/10',	NULL, '������', '010-8001-6812',
'dd55555bb@gmail.com', DEFAULT, '�������' 
);

INSERT INTO RECEIPT VALUES(
'5d95c2b3b1b56e00068001d9', 10000000000008, NULL, NULL, 	
DEFAULT, 'ī��������', 196660, 'LGU+', '2019/03/07',	NULL, '������', '010-8001-6812',
'dd55555bb@gmail.com', DEFAULT, '�����Ϸ�' 
);

INSERT INTO RECEIPT VALUES(
'5d95c074b1b56e00067ffe79', 10000000000009, NULL, NULL, 	
DEFAULT, 'ī�����', 270690, '���̽��������', '2019/02/10',	NULL, '������', '010-8001-6812',
'dd55555bb@gmail.com', DEFAULT, '�������' 
);

------------------------------------------------------------------------------------
-- view ����

-- ���� ���� ��¿� view ����
CREATE VIEW receipt_view
AS
SELECT A.USERID, A.USERNAME, L.BILL_YEAR_MONTH, R.PAID_AMOUNT
FROM APTUSER A, BILL L, RECEIPT R
WHERE A.USERID = L.USERID AND L.MERCHANT_UID = R.MERCHANT_UID
with read only;

-------------------------------
-- �ΰ������۾� ���̺�
CREATE VIEW BASE_VIEW
AS
SELECT MERCHANT_UID, userid, IMPOSE_STATUS, BILL_YEAR_MONTH, 
CALCULATE_START_DAY, CALCULATE_END_DAY,
ACCEPT_DATE, CUTOFF_DATE, IMPOSE_COUNT 
FROM BILL
WITH CHECK OPTION;

INSERT INTO BASE_VIEW VALUES(
BILL_SEQ.NEXTVAL,'201-201','����', '2019/10/01',
'2019/08/01','2019/08/31','2019/08/31','2019/08/31',1  
);

---------------------------------
-- ������ΰ�ó�� �� ���̺�
CREATE VIEW impose_VIEW
AS
SELECT MERCHANT_UID, userid, GENERAL_COST,
      guard_cost,	clean_cost	,	DISINFECT_COST,
      ELEVATOR_COST,	REPAIR_COST,	commission,	FIREINSURANCE_COST,	
      ELECTRIC_COST,		TV_COST,  WATER_COST,	HEATING_COST,	HWATER_COST,	  
      ALLELECTRIC_COAT,	ALLWATER_COST,
      ELECTRIC_USAGE,	water_usage, HEATING_USAGE,  HWATER_USAGE
FROM BILL
WITH CHECK OPTION;

-----------------------------------
-- �ΰ�������� ���� �� ���̺�
CREATE VIEW impose_end_VIEW
AS
SELECT MERCHANT_UID, USERID, 
        IMPOSE_STATUS, BILL_YEAR_MONTH, 
        CALCULATE_START_DAY, CALCULATE_END_DAY,
        IMPOSE_FINISH as "�ΰ�����",
        CUTOFF_DATE, IMPOSE_END_DATE, IMPOSE_COUNT, accept_date
FROM BILL
WITH CHECK OPTION;

----------------------------------------
-- ������ ���� �� ���̺�
CREATE VIEW bill_VIEW
AS
SELECT MERCHANT_UID as "��������ȣ", USERID "��/ȣ", 
       SUM(GENERAL_COST + CLEAN_COST +	DISINFECT_COST +
        ELEVATOR_COST +	REPAIR_COST + GUARD_COST + 	FIREINSURANCE_COST + 
        COMMISSION + ELECTRIC_COST +	ALLELECTRIC_COAT + TV_COST +
      HEATING_COST + 	HWATER_COST +	WATER_COST + ALLWATER_COST + ARREARS) AS "�ΰ��ݾ�",
      ARREARS as "�̳���", 
      SUM(GENERAL_COST + CLEAN_COST +	DISINFECT_COST +
        ELEVATOR_COST +	REPAIR_COST + GUARD_COST + 	FIREINSURANCE_COST + 
        COMMISSION + ELECTRIC_COST +	ALLELECTRIC_COAT + TV_COST +
      HEATING_COST + 	HWATER_COST +	WATER_COST + ALLWATER_COST + ARREARS) AS "���⳻�ݾ�",
      floor((NVL(ARREARS,0)*1.3)) AS "�Ŀ�ü��",
      floor((SUM(GENERAL_COST + CLEAN_COST +	DISINFECT_COST +
        ELEVATOR_COST +	REPAIR_COST + GUARD_COST + 	FIREINSURANCE_COST + 
        COMMISSION + ELECTRIC_COST +	ALLELECTRIC_COAT + TV_COST +
      HEATING_COST + 	HWATER_COST +	WATER_COST + ALLWATER_COST + ARREARS))*1.1) AS "�����ıݾ�"      
FROM BILL
GROUP BY MERCHANT_UID, USERID, ARREARS
with read only;

--------------------------------------------------
-- fk ���� ����
ALTER TABLE bill ADD CONSTRAINT FK_vbank_TO_bill_1 FOREIGN KEY (	vbank_num)
REFERENCES vbank (	vbank_num);

ALTER TABLE payment ADD CONSTRAINT PK_PAYMENT PRIMARY KEY (	merchant_uid);

ALTER TABLE PAYMENT ADD CONSTRAINT FK_BILL_TO_PAYMENT_1 FOREIGN KEY (	MERCHANT_UID)
REFERENCES bill (	merchant_uid) on delete cascade;;

ALTER TABLE RECEIPT ADD CONSTRAINT FK_PAYMENT_TO_RECEIPT_1 FOREIGN KEY (	MERCHANT_UID)
REFERENCES payment (	merchant_uid) on delete cascade;


COMMIT;

--������-----------------------------------------------------------------------------------------------------------

DROP TABLE APPROVAL;
DROP TABLE DRAFT;
DROP TABLE FORMBOX;
DROP TABLE MYBOX; 


DROP SEQUENCE FORMCODE_SEQ;
DROP SEQUENCE DOCNO_SEQ;
DROP SEQUENCE TEMPDOCNO_SEQ;

-- ����� �ڵ� ������
CREATE SEQUENCE FORMCODE_SEQ
START WITH 100
INCREMENT BY 10
NOMAXVALUE
MINVALUE 100
NOCYCLE
NOCACHE;


-- ������ȣ ������
CREATE SEQUENCE DOCNO_SEQ
START WITH 1
INCREMENT BY 1
NOMAXVALUE
MINVALUE 1
NOCYCLE
NOCACHE;

-- �ӽú���������ȣ ������
CREATE SEQUENCE TEMPDOCNO_SEQ
START WITH 1
INCREMENT BY 1
NOMAXVALUE
MINVALUE 1
NOCYCLE
NOCACHE;


-- ���ڰ��� ����� ���̺� 
CREATE TABLE FORMBOX  (
 FORMCODE NUMBER	NOT NULL,
 FORMTYPE VARCHAR2(100)	NOT NULL,
 FORMNAME VARCHAR2(100)	NOT NULL,
 FORMCONTENT VARCHAR2(1000)	NOT NULL,

 CONSTRAINT FORMBOX_PK PRIMARY KEY (FORMCODE)
);

COMMENT ON COLUMN FORMBOX.FORMCODE IS '��������ڵ�';
COMMENT ON COLUMN FORMBOX.FORMTYPE IS '������ĺз�';
COMMENT ON COLUMN FORMBOX.FORMNAME IS '������ĸ�';
COMMENT ON COLUMN FORMBOX.FORMCONTENT IS '������ĳ���';

-- ���ڰ��� ���̺� - ��������
CREATE TABLE MYBOX  (
 MYBOXCODE CHAR(1)	NOT NULL,
 EMPNO VARCHAR2(20)	NOT NULL,
 MYBOXNAME VARCHAR2(30)	NOT NULL,
 
 CONSTRAINT MEMPNO_FK FOREIGN KEY (EMPNO) REFERENCES EMPLOYEE ON DELETE CASCADE,
 CONSTRAINT MYBOX_PK PRIMARY KEY (MYBOXCODE, EMPNO)

);

COMMENT ON COLUMN MYBOX.MYBOXCODE IS '���������ڵ�';
COMMENT ON COLUMN MYBOX.EMPNO IS '���';
COMMENT ON COLUMN MYBOX.MYBOXNAME IS '�������Ը�';

-- ���ڰ��� ��� ���̺� 
CREATE TABLE DRAFT  (
 DOCNO NUMBER,
 EMPNO VARCHAR2(20)	 NOT NULL,
 FORMCODE NUMBER	NOT NULL,
 DOCTITLE VARCHAR2(150)	NOT NULL,
 DOCCONTENT VARCHAR2(4000)	NOT NULL,
 ORIGINFILE VARCHAR2(100)	NULL,
 RENAMEFILE VARCHAR2(100)	NULL,
 DRAFTDATE DATE	DEFAULT SYSDATE	NOT NULL,
 PROGRESS CHAR(1)	DEFAULT 0	NOT NULL,
 DISPLAY CHAR(1) NOT NULL,
 MYBOXCODE CHAR(1)	NULL,

CONSTRAINT DRAFT_PK PRIMARY KEY (DOCNO),
CONSTRAINT DEMPNO_FK FOREIGN KEY (EMPNO) REFERENCES EMPLOYEE ON DELETE CASCADE,
CONSTRAINT FORMCODE_FK FOREIGN KEY (FORMCODE) REFERENCES FORMBOX ON DELETE CASCADE,
CONSTRAINT MYBOXCODE_FK FOREIGN KEY (MYBOXCODE, EMPNO) REFERENCES MYBOX ON DELETE SET NULL
);

COMMENT ON COLUMN DRAFT.DOCNO IS '������ȣ';
COMMENT ON COLUMN DRAFT.EMPNO IS '���';
COMMENT ON COLUMN DRAFT.FORMCODE IS '��������ڵ�';
COMMENT ON COLUMN DRAFT.DOCTITLE IS '��������';
COMMENT ON COLUMN DRAFT.DOCCONTENT IS '��������';
COMMENT ON COLUMN DRAFT.ORIGINFILE IS '�������ϸ�';
COMMENT ON COLUMN DRAFT.RENAMEFILE IS '��������ϸ�';
COMMENT ON COLUMN DRAFT.DRAFTDATE IS '�����ۼ���¥';
COMMENT ON COLUMN DRAFT.PROGRESS IS '�����������';
COMMENT ON COLUMN DRAFT.DISPLAY IS '��������';
COMMENT ON COLUMN DRAFT.MYBOXCODE IS '���������ڵ�';


-- ���ڰ��� ���̺� - ����Ϸ�
CREATE TABLE APPROVAL  (
 DOCNO NUMBER	NOT NULL REFERENCES DRAFT,
 EMPNO VARCHAR2(20)	NOT NULL REFERENCES EMPLOYEE,
 APPDATE DATE DEFAULT SYSDATE NOT NULL,
 FEEDBACK VARCHAR2(2000)	NULL,
 SIGNIMG VARCHAR2(100)	NOT NULL,
 
 CONSTRAINT ADOCNO_FK FOREIGN KEY (DOCNO) REFERENCES  DRAFT ON DELETE CASCADE,
 CONSTRAINT APPROVAL_PK PRIMARY KEY (DOCNO),
 CONSTRAINT AEMPNO_FK FOREIGN KEY (EMPNO) REFERENCES EMPLOYEE ON DELETE CASCADE 
);

COMMENT ON COLUMN APPROVAL.DOCNO IS '������ȣ';
COMMENT ON COLUMN APPROVAL.EMPNO IS '���';
COMMENT ON COLUMN APPROVAL.APPDATE IS '������';
COMMENT ON COLUMN APPROVAL.FEEDBACK IS '÷����ǰ�';
COMMENT ON COLUMN APPROVAL.SIGNIMG IS '�������ϸ�';


INSERT INTO FORMBOX VALUES (FORMCODE_SEQ.NEXTVAL, '��ȼ� ��� 1', '�Ϲ� ��ȼ�', '����');
INSERT INTO FORMBOX VALUES (FORMCODE_SEQ.NEXTVAL, '��ȼ� ��� 2', '�ް� ��û��', '����');
INSERT INTO FORMBOX VALUES (FORMCODE_SEQ.NEXTVAL, '��ȼ� ��� 3', '��Ÿ1', '����');
INSERT INTO FORMBOX VALUES (FORMCODE_SEQ.NEXTVAL, '��ȼ� ��� 4', '��Ÿ2', '����');
INSERT INTO FORMBOX VALUES (FORMCODE_SEQ.NEXTVAL, '��ȼ� ��� 5', '��Ÿ3', '����');
INSERT INTO FORMBOX VALUES (FORMCODE_SEQ.NEXTVAL, '��ȼ� ��� 6', '��Ÿ4', '����');
INSERT INTO FORMBOX VALUES (FORMCODE_SEQ.NEXTVAL, '��ȼ� ��� 7', '��Ÿ5', '����');
INSERT INTO FORMBOX VALUES (FORMCODE_SEQ.NEXTVAL, '��ȼ� ��� 8', '���� ��������', '��������');
INSERT INTO FORMBOX VALUES (FORMCODE_SEQ.NEXTVAL, '��ȼ� ��� 9', '������ ��������', '��������');



INSERT INTO DRAFT VALUES (
DOCNO_SEQ.NEXTVAL, 
'S001', 
'100', 
'���1', 
'��ȳ���1', 
NULL, 
NULL, 
SYSDATE, 
'3', 
'Y', 
NULL);

INSERT INTO DRAFT VALUES (
DOCNO_SEQ.NEXTVAL, 
'A001', 
'110', 
'���2', 
'��ȳ���2', 
NULL, 
NULL, 
SYSDATE, 
'0', 
'Y', 
NULL);

INSERT INTO DRAFT VALUES (
DOCNO_SEQ.NEXTVAL, 
'S001', 
'100', 
'���3', 
'��ȳ���3', 
NULL, 
NULL, 
SYSDATE, 
'1', 
'Y', 
NULL);


INSERT INTO DRAFT VALUES (
DOCNO_SEQ.NEXTVAL, 
'F001', 
'170', 
'���4', 
'��ȳ���4', 
NULL, 
NULL, 
SYSDATE, 
'1', 
'N', 
NULL);


INSERT INTO DRAFT VALUES (
DOCNO_SEQ.NEXTVAL, 
'R001', 
'110', 
'���5', 
'��ȳ���5', 
NULL, 
NULL, 
SYSDATE, 
'2', 
'Y', 
NULL);


INSERT INTO DRAFT VALUES (
DOCNO_SEQ.NEXTVAL, 
'A001', 
'100', 
'���6', 
'��ȳ���6', 
NULL, 
NULL, 
SYSDATE, 
'1', 
'N', 
NULL);

INSERT INTO DRAFT VALUES (
DOCNO_SEQ.NEXTVAL, 
'A001', 
'110', 
'���7', 
'��ȳ���7', 
NULL, 
NULL, 
SYSDATE, 
'1', 
'N', 
NULL);

INSERT INTO DRAFT VALUES (
DOCNO_SEQ.NEXTVAL, 
'R001', 
'170', 
'���8', 
'��ȳ���8', 
NULL, 
NULL, 
SYSDATE, 
'1', 
'N', 
NULL);

INSERT INTO DRAFT VALUES (
DOCNO_SEQ.NEXTVAL, 
'S001', 
'170', 
'���9', 
'��ȳ���9', 
NULL, 
NULL, 
SYSDATE, 
'0', 
'N', 
NULL);


INSERT INTO DRAFT VALUES (
DOCNO_SEQ.NEXTVAL, 
'F001', 
'120', 
'���10', 
'��ȳ���10', 
NULL, 
NULL, 
SYSDATE, 
'0', 
'N', 
NULL);

COMMIT;
--�̿��� -------------------------------------------------------------
--��������
DROP SEQUENCE NOTICE_SEQ;
CREATE SEQUENCE  "HIAPT"."NOTICE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;

DROP TABLE NOTICE CASCADE CONSTRAINTS;

CREATE TABLE NOTICE (
	NOTICE_NO	NUMBER CONSTRAINT PK_NOTICE PRIMARY KEY,
	NOTICE_TITLE	VARCHAR2(100) NOT NULL,
	NOTICE_DATE DATE	DEFAULT SYSDATE,
	NOTICE_CONTENTS VARCHAR2(4000) NOT NULL,
	NOTICE_READ_COUNT NUMBER DEFAULT 0,
	NOTICE_WRITER 	VARCHAR2(20)	CONSTRAINT FK_NOTICE REFERENCES EMPLOYEE (EMPNO)
);

COMMENT ON COLUMN notice. notice_no IS '�۹�ȣ';
COMMENT ON COLUMN notice.notice_title IS '����';
COMMENT ON COLUMN notice.notice_date IS '�ۼ���';
COMMENT ON COLUMN notice.notice_contents IS '����';
COMMENT ON COLUMN notice.notice_read_count IS '��ȸ��';
COMMENT ON COLUMN notice.notice_writer IS '�ۼ���';

INSERT INTO NOTICE VALUES(NOTICE_SEQ.NEXTVAL, '���������Դϴ�','18/09/20','��������������',default,'admin');
INSERT INTO NOTICE VALUES(NOTICE_SEQ.NEXTVAL, '102������','18/10/10','�Ϸ�',default,'admin');
INSERT INTO NOTICE VALUES(NOTICE_SEQ.NEXTVAL, '108������','19/1/01','�Ϸ�',default,'admin');
INSERT INTO NOTICE VALUES(NOTICE_SEQ.NEXTVAL, '1���� ����������','19/02/16','�Ϸ�',default,'admin');
INSERT INTO NOTICE VALUES(NOTICE_SEQ.NEXTVAL, '2���� ����������','19/03/12','�Ϸ�',default,'admin');
INSERT INTO NOTICE VALUES(NOTICE_SEQ.NEXTVAL, '1���� ��������','19/04/10','�Ϸ�',default,'admin');
INSERT INTO NOTICE VALUES(NOTICE_SEQ.NEXTVAL, '1���� ��������','19/05/11','�Ϸ�',default,'admin');
INSERT INTO NOTICE VALUES(NOTICE_SEQ.NEXTVAL, '5���� ����������','19/06/04','�Ϸ�',default,'admin');
INSERT INTO NOTICE VALUES(NOTICE_SEQ.NEXTVAL, '1���� ��������','19/07/04','�Ϸ�',default,'admin');
INSERT INTO NOTICE VALUES(NOTICE_SEQ.NEXTVAL, '1���� ��������','19/08/04','�̻�',default,'admin');
INSERT INTO NOTICE VALUES(NOTICE_SEQ.NEXTVAL, '4���� ����������','19/09/05','�̻�',default,'admin');
INSERT INTO NOTICE VALUES(NOTICE_SEQ.NEXTVAL, '2���� ����������','19/10/03','�Ϸ�',default,'admin');
INSERT INTO NOTICE VALUES(NOTICE_SEQ.NEXTVAL, '1���� ��������','19/10/04','�̻�',default,'admin');
INSERT INTO NOTICE VALUES(NOTICE_SEQ.NEXTVAL, '1���� ����������',default,'�̻�',default,'admin');
INSERT INTO NOTICE VALUES(NOTICE_SEQ.NEXTVAL, '1���� ��������',default,'�Ϸ�',default,'admin');

--������������
DROP TABLE NOTICEFILES CASCADE CONSTRAINTS;

CREATE TABLE noticefiles (
	notice_no	number CONSTRAINT FK_NOTICEFILES REFERENCES NOTICE (NOTICE_NO),
	notice_original_file_name varchar2(100)	NOT NULL,
	notice_rename_file_name varchar2(100)	NOT NULL
);
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
--�ֹ���ǥ
DROP SEQUENCE VOTE_SEQ;
CREATE SEQUENCE  "HIAPT"."VOTE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;

DROP TABLE USERVOTE CASCADE CONSTRAINTS;

CREATE TABLE uservote (
	vote_no	number CONSTRAINT PK_USERVOTE primary key,
	vote_title	varchar2(100)		NOT NULL,
	vote_date	date	DEFAULT sysdate,
  vote_writer	varchar2(20) CONSTRAINT fk_uservote references employee (empno),
	vote_start_date	date	 DEFAULT sysdate,
	vote_final_date	date	 DEFAULT sysdate,
  vote_read_count	number	DEFAULT 0,
	vote_secret char(1)	DEFAULT 'N'	 check (vote_secret in ('y','n')),
  vote_contents	varchar2(500)		NOT NULL,
	voteone	varchar2(50),
	votetwo varchar2(50),
	votethree	varchar2(50),
	votefour	varchar2(50)	,
  votefive	varchar2(50)	
);

COMMENT ON COLUMN uservote.vote_no IS '�۹�ȣ';
COMMENT ON COLUMN uservote.vote_title IS '����';
COMMENT ON COLUMN uservote.vote_date IS '�ۼ���¥';
COMMENT ON COLUMN uservote.vote_writer IS '�ۼ���';
COMMENT ON COLUMN uservote.vote_start_date IS '��ǥ������';
COMMENT ON COLUMN uservote.vote_final_date IS '��ǥ������';
COMMENT ON COLUMN uservote.vote_read_count IS '��ȸ��';
COMMENT ON COLUMN uservote.vote_secret IS '�������';
COMMENT ON COLUMN uservote.vote_contents IS '����';
COMMENT ON COLUMN uservote.voteone IS '��ǥ1';
COMMENT ON COLUMN uservote.votetwo IS '��ǥ2';
COMMENT ON COLUMN uservote.votethree IS '��ǥ3';
COMMENT ON COLUMN uservote.votefour IS '��ǥ4';
COMMENT ON COLUMN uservote.votefive IS '��ǥ5';

--�ֹ���ǥ���üũ

DROP TABLE VOTERESULT CASCADE CONSTRAINTS;

CREATE TABLE voteresult (
	vote_no	number constraint fk_voteresult references uservote (vote_no ),
	voteone_result	number		NULL,
	votetwo_result	number		NULL,
	votethree_result	number		NULL,
	votefour_result	number		NULL,
	votefive_result number		NULL
);
ALTER TABLE voteresult ADD CONSTRAINT PK_VOTERESULT PRIMARY KEY (
	vote_no
);
COMMENT ON COLUMN voteresult.vote_no IS '�۹�ȣ';
COMMENT ON COLUMN voteresult.voteone_result IS '��ǥ���1';
COMMENT ON COLUMN voteresult.votetwo_result IS '��ǥ���2';
COMMENT ON COLUMN voteresult.votethree_result IS '��ǥ���3';
COMMENT ON COLUMN voteresult.votefour_result IS '��ǥ���4';
COMMENT ON COLUMN voteresult.votefive_result IS '��ǥ���5';


--�ֹ���ǥ�ߺ�üũ

DROP TABLE VOTECHECK CASCADE CONSTRAINTS;
CREATE TABLE votecheck (
	userid VARCHAR2(10)	CONSTRAINT FK_VOTECHECK_USERID REFERENCES APTUSER (USERID),
	vote_no	number CONSTRAINT FK_VOTECHECK_VOTE_NO REFERENCES USERVOTE (VOTE_NO),
	vote_result 	varchar2(50)		NULL
);
ALTER TABLE votecheck ADD CONSTRAINT PK_VOTECHECK PRIMARY KEY (
	userid,
	vote_no
);

COMMENT ON COLUMN votecheck.userid IS '��/ȣ��';
COMMENT ON COLUMN votecheck.vote_no IS '�۹�ȣ';
COMMENT ON COLUMN votecheck.vote_result IS '��������ǥ��';

-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
--�����Խ���

DROP SEQUENCE BOARD_SEQ;
CREATE SEQUENCE  "HIAPT"."BOARD_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;


DROP TABLE board CASCADE CONSTRAINTS;

CREATE TABLE board (
	boardno	number CONSTRAINT PK_BOARD PRIMARY KEY,
	boardtitle varchar2(100)		NOT NULL,
	boarddate date DEFAULT sysdate	NULL,
	boardcontents varchar2(4000)		NOT NULL,
	boardreadcount number DEFAULT 0,
	userid VARCHAR2(10) CONSTRAINT FK_BOARD REFERENCES APTUSER(USERID)
);

COMMENT ON COLUMN board.boardno IS '�۹�ȣ';
COMMENT ON COLUMN board.boardtitle IS '����';
COMMENT ON COLUMN board.boarddate IS '�ۼ���';
COMMENT ON COLUMN board.boardcontents IS '����';
COMMENT ON COLUMN board.boardreadcount IS '��ȸ��';
COMMENT ON COLUMN board.userid IS '��/ȣ��';


--�����Խ��� ���
DROP TABLE boardreply CASCADE CONSTRAINTS;

CREATE TABLE boardreply (
	board_no	number CONSTRAINT FK_BOARDNO_REPLY REFERENCES BOARD(BOARDNO),
	boardreply_original_no	number		NOT NULL,
	boardreply_group_no	number		NOT NULL,
	boardreply_group_order	number	DEFAULT 0	NULL,
	boardreply_group_layer	number	DEFAULT 0	NULL,
	boardreply_date	date	DEFAULT sysdate	NULL,
	boardreply_contents	varchar2(500)		NOT NULL,
	userid VARCHAR2(10) CONSTRAINT FK_BOARD_REPLY REFERENCES APTUSER(USERID)
);

COMMENT ON COLUMN boardreply.board_no IS '�۹�ȣ';
COMMENT ON COLUMN boardreply.boardreply_original_no IS '��۹�ȣ';
COMMENT ON COLUMN boardreply.boardreply_group_no IS '��۱׷�';
COMMENT ON COLUMN boardreply.boardreply_group_order IS '�׷쳻����';
COMMENT ON COLUMN boardreply.boardreply_group_layer IS '������ ��ۼ���';
COMMENT ON COLUMN boardreply.boardreply_date IS '����ۼ��ð�';
COMMENT ON COLUMN boardreply.boardreply_contents IS '��۳���';
COMMENT ON COLUMN boardreply.userid IS '��/ȣ��';

--�����Խ��� ��������
DROP TABLE boardfiles CASCADE CONSTRAINTS;

CREATE TABLE boardfiles (
	boardno	number CONSTRAINT FK_BOARDFILES REFERENCES BOARD(BOARDNO),
	board_original_file_name VARCHAR(255)		NOT NULL,
	board_rename_file_name	VARCHAR(255)		NOT NULL
);

COMMENT ON COLUMN boardfiles.boardno IS '�۹�ȣ';
COMMENT ON COLUMN boardfiles.board_original_file_name IS '���������̸�';
COMMENT ON COLUMN boardfiles.board_rename_file_name IS '����������̸�';

-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
--�ο�
DROP SEQUENCE COMPLAIN_SEQ;
CREATE SEQUENCE  "HIAPT"."COMPLAIN_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;

DROP TABLE complain CASCADE CONSTRAINTS;

CREATE TABLE complain (
	comp_no	number	CONSTRAINT PK_COMPLAIN PRIMARY KEY,
	comp_title	varchar2(100)		NOT NULL,
	comp_date	date 	DEFAULT sysdate,
	comp_contents	varchar2(2000)		NOT NULL,
	comp_result_status 	char(1)	DEFAULT 'N' CHECK(comp_result_status IN ('Y','N')),
	comp_response	varchar2(2000)		NULL,
	empno	varchar2(20)		CONSTRAINT FK_COMP_EMPNO REFERENCES EMPLOYEE(EMPNO),
	userid	VARCHAR2(10)	CONSTRAINT FK_COMP_USERID REFERENCES APTUSER(USERID)
);

COMMENT ON COLUMN complain.comp_no IS '�۹�ȣ';
COMMENT ON COLUMN complain.comp_title IS '����';
COMMENT ON COLUMN complain.comp_date IS '�ۼ���';
COMMENT ON COLUMN complain.comp_contents IS '����';
COMMENT ON COLUMN complain.comp_result_status IS 'ó������';
COMMENT ON COLUMN complain.comp_response IS '���';
COMMENT ON COLUMN complain.empno IS '���';
COMMENT ON COLUMN complain.userid IS '��/ȣ��';

DROP TABLE complainimg CASCADE CONSTRAINTS;

CREATE TABLE complainimg (
	comp_no	number CONSTRAINT FK_COMPIMG REFERENCES COMPLAIN(COMP_NO),
	comp_original_imgname	varchar2(100)		NOT NULL,
	comp_rename_imgname	varchar2(100)		NOT NULL
);

COMMENT ON COLUMN complainimg.comp_no IS '�۹�ȣ';
COMMENT ON COLUMN complainimg.comp_original_imgname IS '�����̹����̸�';
COMMENT ON COLUMN complainimg.comp_rename_imgname IS '������̹����̸�';


-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
--ä��

DROP TABLE chatmaker CASCADE CONSTRAINTS;

CREATE TABLE chatmaker (
	chattitle 	varchar2(50)	CONSTRAINT PK_CHATMAKER PRIMARY KEY,
	empno	varchar2(20)	 CONSTRAINT FK_CHATMAKER REFERENCES EMPLOYEE(EMPNO)
);

COMMENT ON COLUMN chatmaker.chattitle IS '������';
COMMENT ON COLUMN chatmaker.empno IS '���';

DROP TABLE chatgroup CASCADE CONSTRAINTS;

CREATE TABLE chatgroup (
	chattitle	varchar2(50) REFERENCES CHATMAKER(CHATTITLE),
	empno	varchar2(20)	 REFERENCES EMPLOYEE(EMPNO)
);

ALTER TABLE chatgroup ADD CONSTRAINT PK_CHATGROUB PRIMARY KEY (
	chattitle,
	empno
);

COMMENT ON COLUMN chatgroup.chattitle IS '������';
COMMENT ON COLUMN chatgroup.empno IS '���';

DROP TABLE chatmessage CASCADE CONSTRAINTS;

CREATE TABLE chatmessage (
	chatwritedate	date	DEFAULT sysdate,
	chatcontents	varchar2(500)	NOT NULL,
	chatorder	number	NOT NULL,
	chattitle	varchar2(50),
	empno	varchar2(20)	
);
ALTER TABLE chatmessage ADD CONSTRAINT FK_CHATMESSAGE FOREIGN KEY (
	chattitle,
	empno
) references chatgroup(	chattitle,
	empno);
COMMENT ON COLUMN chatmessage.chatwritedate IS '�ۼ���¥';
COMMENT ON COLUMN chatmessage.chatcontents IS '�ۼ�����';
COMMENT ON COLUMN chatmessage.chatorder IS '�ۼ���';
COMMENT ON COLUMN chatmessage.chattitle IS '������';
COMMENT ON COLUMN chatmessage.empno IS '���';

commit;
--����-----------------------------------------------------------------

-- ���Ϲ�ȣ ������
drop SEQUENCE mailno_seq;

CREATE SEQUENCE mailno_seq
START WITH 1
INCREMENT BY 1
MINVALUE 1
NOCYCLE
NOCACHE;

--�����ڵ� ������
drop SEQUENCE mailcode_seq;

CREATE SEQUENCE mailcode_seq
START WITH 1
INCREMENT BY 1
MINVALUE 1
NOCYCLE
NOCACHE;


--�ּҷ��ڵ� ������
drop SEQUENCE addressbook_code_seq;

CREATE SEQUENCE addressbook_code_seq
START WITH 1
INCREMENT BY 1
MINVALUE 1
NOCYCLE
NOCACHE;

--�ּҷϹ�ȣ ������
drop SEQUENCE addressbook_no_seq;

CREATE SEQUENCE addressbook_no_seq
START WITH 1
INCREMENT BY 1
MINVALUE 1
NOCYCLE
NOCACHE;

-- ������
drop table mailboxtype cascade CONSTRAINTS;

create table mailboxtype(
    mailcode number primary key,
    mailboxname varchar2(50) 
);

insert into mailboxtype values(mailcode_seq.nextval, '����������');
insert into mailboxtype values(mailcode_seq.nextval, '����������');
insert into mailboxtype values(mailcode_seq.nextval, '�ӽ�������');
insert into mailboxtype values(mailcode_seq.nextval, '���� �� ������');
insert into mailboxtype values(mailcode_seq.nextval, '������');
insert into mailboxtype values(mailcode_seq.nextval, '����');
insert into mailboxtype values(mailcode_seq.nextval, 'ȸ��');
insert into mailboxtype values(mailcode_seq.nextval, '�ŷ�ó');

-- ����
drop table mail cascade CONSTRAINTS;

create table mail(
  mailno number primary key,
  mailcode number references mailboxtype (mailcode),
  empemail varchar2(50) references employee (empemail),
  mailtitle varchar2(50),
  mailtime date default sysdate,
  mailcontents varchar2(600),
  recipient varchar2(50)
);

insert into mail values(mailno_seq.nextval, null, 'abc@naver.com', '�ʿ��Է� ���� ��', default,
'�ʿ��Է� ���� �濣 ���۳��� ���� �ְ�', 'qwrds@daum.net');
insert into mail values(mailno_seq.nextval, null, 'abc@naver.com', '��Ӵ�', default,
'��� ���� ���� ����', 'rudfl@daum.net');
insert into mail values(mailno_seq.nextval, null, 'abc@naver.com', '��� ����� ��', default,
'��, �ٽ� �¾�ٸ�', 'tjfql@gmail.com');
insert into mail values(mailno_seq.nextval, null, 'abc@naver.com', '���һ��� ��', default,
'���һ� ���� �㿡 ������ ǳ��Ҹ�', 'rjacla@gmail.com');
insert into mail values(mailno_seq.nextval, null, 'abc@naver.com', '����� �뷡', default, '����� ���� ����� �����', NULL);
insert into mail values(mailno_seq.nextval, 3, 'abc@naver.com', '�ӽ� ������', default, '�ӽ������� Ȯ�ο��Դϴ�.',null);
insert into mail values(mailno_seq.nextval, 3, 'qwrds@daum.net', '�콼 ���Ǽ�', default,
'����, �λ� �����ֱ���',null);
insert into mail values(mailno_seq.nextval, 3, 'rudfl@daum.net', '�ٽ� �������', default,
'�ν�Ÿ�� ���� ���� ���� �Ϸ��',null);
insert into mail values(mailno_seq.nextval, 4, 'abc@naver.com', '���� ��������', default, '���� �� ������ Ȯ�ο��Դϴ�.',null);
insert into mail values(mailno_seq.nextval, 4, 'qwrds@daum.net', '���� ���߾�', default,
'���� �������� �ϰ� ���� ���� ��',null);
insert into mail values(mailno_seq.nextval, 4, 'rudfl@daum.net', '�õ� �ɿ� ���� �ֵ�', default,
'�ƹ����� �ƹ��͵� ������ �� ���� ����',null);
insert into mail values(mailno_seq.nextval, 5, 'tjfql@gmail.com', '������', default, '������ Ȯ�ο� �Դϴ�.',null);
insert into mail values(mailno_seq.nextval, 6, 'tjfql@gmail.com', '����', default, '���� �׷� Ȯ�ο� �Դϴ�.',null);
insert into mail values(mailno_seq.nextval, 7, 'tjfql@gmail.com', 'ȸ��', default, '���� �׷� Ȯ�ο� �Դϴ�.',null);
insert into mail values(mailno_seq.nextval, 8, 'tjfql@gmail.com', '�ŷ�ó', default, '���� �׷� Ȯ�ο� �Դϴ�.',null);

-- ���� ������
drop table mailfilebox cascade CONSTRAINTS;
create table mailfilebox(
  mailno number references mail (mailno),
  originalfile varchar2(50),
  renamefile varchar2(50),
  filesize number,
  downloadterm date  
);

insert into mailfilebox values(1, 'a.txt', '201910031000.txt', 100, null);
insert into mailfilebox values(1, 'b.txt', '201910031100.txt', 100, null);
insert into mailfilebox values(2, 'c.txt', '201910031200.txt', 200, null);
insert into mailfilebox values(3, 'd.txt', '201910031300.txt', 300, null);
insert into mailfilebox values(4, 'e.txt', '201910031400.txt', 1024 * 10, sysdate + 30);

-- �ּҷ� �׷�

drop table addressbook_type cascade constraints;

CREATE TABLE addressbook_type (
	addressbook_code	number primary key	NOT NULL,
	addressbook_name	varchar2(50)	NOT NULL
);

insert into addressbook_type values(addressbook_code_seq.nextval, '����');
insert into addressbook_type values(addressbook_code_seq.nextval, 'ģ��');
insert into addressbook_type values(addressbook_code_seq.nextval, 'ȸ��');
insert into addressbook_type values(addressbook_code_seq.nextval, '�ŷ�ó');
insert into addressbook_type values(addressbook_code_seq.nextval, '��ȸ');

-- �ּҷ�
drop table addressbook cascade CONSTRAINTS;

CREATE TABLE addressbook (
	addressbook_no number primary key	NOT NULL,
	addressbook_address varchar2(100)	NULL,
	addressbook_etc	varchar2(100)	NULL,
	addressbook_name	varchar2(20)	NULL,
	addressbook_phone	varchar2(20)	NULL,
	addressbook_mail	varchar2(30)	NULL,
	addressbook_code	number NOT NULL references addressbook_type (addressbook_code),
	empno	varchar2(20)	NULL references employee (empno)
);

insert into addressbook values(addressbook_no_seq.nextval, '��⵵ ������ ������', '����', 'ȫ�浿', '010-1234-5678', 'tjfql@gmail.com', 1, null);
insert into addressbook values(addressbook_no_seq.nextval, '��⵵ ������ �߿���', 'ģ��', '�̼���', '010-3242-5678', 'soon@gmail.com', 2, null);
insert into addressbook values(addressbook_no_seq.nextval, '��⵵ ������ �д籸', 'ȸ��', '�Ż��Ӵ�', '010-5432-5678', 'sin@gmail.com', 3, null);
insert into addressbook values(addressbook_no_seq.nextval, '����Ư���� �����', '�ŷ�ó', '����', '010-8965-5678', 'won@gmail.com', 4, null);
insert into addressbook values(addressbook_no_seq.nextval, '����Ư���� ������', '��ȸ', '������', '010-1232-5678', 'you@gmail.com', 5, null);


COMMIT;

