/*==============================================================*/
/* Database name:  test                                         */
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2015/11/13 11:08:45                          */
/*==============================================================*/


drop database if exists huawangxin;

/*==============================================================*/
/* Database: test                                               */
/*==============================================================*/
create database huawangxin;

use huawangxin;

/*==============================================================*/
/* Table: album                                                 */
/*==============================================================*/
create table album
(
   id                   varchar(32) not null,
   name                 varchar(32)  not null comment '用户名',
   picture_name         varchar(32) comment '照片名',
   album_name           varchar(32) comment '相册名',
   create_time          bigint(20) comment '上传时间',
   url                  varchar(255) comment '图片地址',
   description          varchar(255) comment '描述',
   state                varchar(2) comment '状态',
   sort                 varchar(3) comment '排序,000-999',
   album_id             varchar(32)  not null comment '相册id',
   primary key (id)
);

/*==============================================================*/
/* Table: album_photo                                           */
/*==============================================================*/
create table album_photo
(
   id                   varchar(32) not null,
   album_name           varchar(32) not null comment '相册名',
   name                 varchar(32)  not null comment '用户名',
   create_time          bigint(20) comment '上传时间',
   description          varchar(255) comment '描述',
   state                varchar(2) comment '状态',
   sort                 varchar(3) comment '排序,000-999',
   primary key (id)
);

/*==============================================================*/
/* Table: log                                                   */
/*==============================================================*/
create table log
(
   id                   varchar(32) not null,
   name                 varchar(32) comment '用户名',
   create_time          bigint(20) comment '操作时间',
   operation            varchar(32) comment '操作类型',
   state                varchar(2) comment '状态',
   sort                 varchar(3) comment '排序,000-999',
   primary key (id)
);

/*==============================================================*/
/* Table: user                                                  */
/*==============================================================*/
create table user
(
   id                   varchar(32) not null,
   name                 varchar(32)  not null comment '用户名',
   password             varchar(32) comment '密码',
   gender               varchar(3) comment '性别',
   age                  int(3) comment '年龄',
   tel                  varchar(20) comment '电话',
   email                varchar(32) comment '邮箱',
   state                varchar(2) comment '状态',
   sort                 varchar(3) comment '排序,000-999',
   create_time          bigint(20) comment '创建时间',
   primary key (id)
);

