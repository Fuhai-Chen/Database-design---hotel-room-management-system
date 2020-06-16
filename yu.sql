
/*==============================================================*/
/* Table: manager, 经理信息表 */
/*==============================================================*/
CREATE TABLE manager (
  工作编号 varchar(10) NOT NULL,
  姓名 varchar(10) DEFAULT NULL,
  电话 varchar(20) DEFAULT NULL,
  身份证号 varchar(30) DEFAULT NULL UNIQUE,
  地址 varchar(45) DEFAULT NULL,
  入职时间 date DEFAULT NULL,
  管理密码 varchar(30) DEFAULT NULL,
  PRIMARY KEY (工作编号)
)

/*==============================================================*/
/* Table: staff, 职工信息表 */
/*==============================================================*/
CREATE TABLE staff (
  工作编号 varchar(10) NOT NULL,
  姓名 varchar(10) NOT NULL,
  电话 varchar(20) NOT NULL,
  身份证号 varchar(30) NOT NULL UNIQUE,
  地址 varchar(45) DEFAULT NULL,
  入职时间 date DEFAULT NULL,
  归属的经理编号 varchar(10) DEFAULT NULL UNIQUE,
  PRIMARY KEY (工作编号)
) 

/*==============================================================*/
/* Table: customer, 顾客信息表 */
/*==============================================================*/
CREATE TABLE customer (
  身份证号 varchar(30) NOT NULL UNIQUE,
  姓名 varchar(20) NOT NULL,
  性别 varchar(4) NOT NULL DEFAULT '男',
  电话 varchar(20) NOT NULL,
  服务的员工编号 varchar(10) NOT NULL,
  PRIMARY KEY (身份证号)
) 


/*==============================================================*/
/* Table: checkout, 退房表 */
/*==============================================================*/
CREATE TABLE checkout (
  房间号 varchar(20) NOT NULL,
  身份证号 varchar(45) NOT NULL UNIQUE,
  姓名 varchar(15) NOT NULL,
  退房时间 datetime NOT NULL,
  天数 int NOT NULL,
  PRIMARY KEY (房间号)
) 
/*==============================================================*/
/* Table: checkin, 入住表 */
/*==============================================================*/
CREATE TABLE checkin (
  房间号 varchar(20) NOT NULL,
  身份证号 varchar(45) NOT NULL,
  姓名 varchar(15) NOT NULL,
  入住时间 date NOT NULL,
  PRIMARY KEY (房间号)
)

/*==============================================================*/
/* Table: room, 客房信息表 */
/*==============================================================*/
CREATE TABLE room (
  房间号 varchar(20) NOT NULL,
  类型 varchar(30) NOT NULL,
  价格 varchar(45) NOT NULL,
  PRIMARY KEY (房间号)
)

/*==============================================================*/
/* Table: roomstatus, 客房状态表 */
/*==============================================================*/
CREATE TABLE roomstatus (
  房间号 varchar(20) NOT NULL,
  状态 varchar(10) NOT NULL DEFAULT '空闲',
  PRIMARY KEY (房间号)
)

/*==============================================================*/
/* Table: orderinfo, 结账订单表 */
/*==============================================================*/
CREATE TABLE orderinfo (
  订单编号 varchar(30) NOT NULL,
  身份证号 varchar(45) NOT NULL,
  姓名 varchar(15) NOT NULL,
  房间号 varchar(20) NOT NULL UNIQUE,
  服务的员工编号 varchar(10) NOT NULL,
  入住时间 datetime NOT NULL,
  退房时间 datetime NOT NULL,
  PRIMARY KEY (订单编号)
)
