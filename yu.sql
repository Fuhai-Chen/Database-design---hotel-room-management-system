
/*==============================================================*/
/* Table: manager, ������Ϣ�� */
/*==============================================================*/
CREATE TABLE manager (
  ������� varchar(10) NOT NULL,
  ���� varchar(10) DEFAULT NULL,
  �绰 varchar(20) DEFAULT NULL,
  ���֤�� varchar(30) DEFAULT NULL UNIQUE,
  ��ַ varchar(45) DEFAULT NULL,
  ��ְʱ�� date DEFAULT NULL,
  �������� varchar(30) DEFAULT NULL,
  PRIMARY KEY (�������)
)

/*==============================================================*/
/* Table: staff, ְ����Ϣ�� */
/*==============================================================*/
CREATE TABLE staff (
  ������� varchar(10) NOT NULL,
  ���� varchar(10) NOT NULL,
  �绰 varchar(20) NOT NULL,
  ���֤�� varchar(30) NOT NULL UNIQUE,
  ��ַ varchar(45) DEFAULT NULL,
  ��ְʱ�� date DEFAULT NULL,
  �����ľ����� varchar(10) DEFAULT NULL UNIQUE,
  PRIMARY KEY (�������)
) 

/*==============================================================*/
/* Table: customer, �˿���Ϣ�� */
/*==============================================================*/
CREATE TABLE customer (
  ���֤�� varchar(30) NOT NULL UNIQUE,
  ���� varchar(20) NOT NULL,
  �Ա� varchar(4) NOT NULL DEFAULT '��',
  �绰 varchar(20) NOT NULL,
  �����Ա����� varchar(10) NOT NULL,
  PRIMARY KEY (���֤��)
) 


/*==============================================================*/
/* Table: checkout, �˷��� */
/*==============================================================*/
CREATE TABLE checkout (
  ����� varchar(20) NOT NULL,
  ���֤�� varchar(45) NOT NULL UNIQUE,
  ���� varchar(15) NOT NULL,
  �˷�ʱ�� datetime NOT NULL,
  ���� int NOT NULL,
  PRIMARY KEY (�����)
) 
/*==============================================================*/
/* Table: checkin, ��ס�� */
/*==============================================================*/
CREATE TABLE checkin (
  ����� varchar(20) NOT NULL,
  ���֤�� varchar(45) NOT NULL,
  ���� varchar(15) NOT NULL,
  ��סʱ�� date NOT NULL,
  PRIMARY KEY (�����)
)

/*==============================================================*/
/* Table: room, �ͷ���Ϣ�� */
/*==============================================================*/
CREATE TABLE room (
  ����� varchar(20) NOT NULL,
  ���� varchar(30) NOT NULL,
  �۸� varchar(45) NOT NULL,
  PRIMARY KEY (�����)
)

/*==============================================================*/
/* Table: roomstatus, �ͷ�״̬�� */
/*==============================================================*/
CREATE TABLE roomstatus (
  ����� varchar(20) NOT NULL,
  ״̬ varchar(10) NOT NULL DEFAULT '����',
  PRIMARY KEY (�����)
)

/*==============================================================*/
/* Table: orderinfo, ���˶����� */
/*==============================================================*/
CREATE TABLE orderinfo (
  ������� varchar(30) NOT NULL,
  ���֤�� varchar(45) NOT NULL,
  ���� varchar(15) NOT NULL,
  ����� varchar(20) NOT NULL UNIQUE,
  �����Ա����� varchar(10) NOT NULL,
  ��סʱ�� datetime NOT NULL,
  �˷�ʱ�� datetime NOT NULL,
  PRIMARY KEY (�������)
)
