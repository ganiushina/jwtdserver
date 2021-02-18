-- # noinspection SqlNoDataSourceInspectionForFile


--drop table if exists AUTHORITY ;
CREATE TABLE IF NOT EXISTS AUTHORITY (
                           id int identity  PRIMARY KEY ,
                           name                  varchar(50) not null,

);
--drop table if exists USER ;
CREATE TABLE  USER (
                       id  int identity NOT NULL PRIMARY KEY,
                       username              varchar(30) not null,
                       password              varchar(80) not null,
                       FIRSTNAME varchar(500),
                       LASTNAME varchar(500),
                       email                 varchar(50) ,
                       ACTIVATED bit

);

--drop table if exists USER_AUTHORITY ;
CREATE TABLE IF NOT EXISTS USER_AUTHORITY (
                                id  int identity  PRIMARY KEY ,
                                USER_ID        int,
                                AUTHORITY_NAME varchar(500)
);


INSERT INTO USER (ID, USERNAME, PASSWORD, FIRSTNAME, LASTNAME, EMAIL, ACTIVATED) VALUES (1, 'admin', '$2a$08$lDnHPz7eUkSi6ao14Twuau08mzhWrL4kyZGGU5xfiGALO/Vxd5DOi', 'admin', 'admin', 'admin@admin.com', 1);
INSERT INTO USER (ID, USERNAME, PASSWORD, FIRSTNAME, LASTNAME, EMAIL, ACTIVATED) VALUES (2, 'user', '$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC', 'user', 'user', 'enabled@user.com', 1);
INSERT INTO USER (ID, USERNAME, PASSWORD, FIRSTNAME, LASTNAME, EMAIL, ACTIVATED) VALUES (3, 'disabled', '$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC', 'user', 'user', 'disabled@user.com', 0);



INSERT INTO AUTHORITY (NAME) VALUES ('ROLE_USER');
INSERT INTO AUTHORITY (NAME) VALUES ('ROLE_ADMIN');



INSERT INTO USER_AUTHORITY (USER_ID, AUTHORITY_NAME) VALUES (1, 'ROLE_USER');
INSERT INTO USER_AUTHORITY (USER_ID, AUTHORITY_NAME) VALUES (1, 'ROLE_ADMIN');
INSERT INTO USER_AUTHORITY (USER_ID, AUTHORITY_NAME) VALUES (2, 'ROLE_USER');
INSERT INTO USER_AUTHORITY (USER_ID, AUTHORITY_NAME) VALUES (3, 'ROLE_USER');
