create table USERS (
    ID bigint not null,
    USERNAME varchar(500),
    PASSWORD varchar(500),
    FIRSTNAME varchar(500),
    LASTNAME varchar(500),
    EMAIL varchar(500),
    ACTIVATED  bit
                 );


INSERT INTO USERS (ID, USERNAME, PASSWORD, FIRSTNAME, LASTNAME, EMAIL, ACTIVATED) VALUES (1, 'admin', '$2a$08$lDnHPz7eUkSi6ao14Twuau08mzhWrL4kyZGGU5xfiGALO/Vxd5DOi', 'admin', 'admin', 'admin@admin.com', 1);
INSERT INTO USERS (ID, USERNAME, PASSWORD, FIRSTNAME, LASTNAME, EMAIL, ACTIVATED) VALUES (2, 'user', '$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC', 'user', 'user', 'enabled@user.com', 1);
INSERT INTO USERS (ID, USERNAME, PASSWORD, FIRSTNAME, LASTNAME, EMAIL, ACTIVATED) VALUES (3, 'disabled', '$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC', 'user', 'user', 'disabled@user.com', 0);

create table AUTHORITY(
    NAME varchar(500)
);

INSERT INTO AUTHORITY (NAME) VALUES ('ROLE_USER');
INSERT INTO AUTHORITY (NAME) VALUES ('ROLE_ADMIN');

create table USER_AUTHORITY (
       USER_ID int,
       AUTHORITY_NAME varchar(500)
);

INSERT INTO USER_AUTHORITY (USER_ID, AUTHORITY_NAME) VALUES (1, 'ROLE_USER');
INSERT INTO USER_AUTHORITY (USER_ID, AUTHORITY_NAME) VALUES (1, 'ROLE_ADMIN');
INSERT INTO USER_AUTHORITY (USER_ID, AUTHORITY_NAME) VALUES (2, 'ROLE_USER');
INSERT INTO USER_AUTHORITY (USER_ID, AUTHORITY_NAME) VALUES (3, 'ROLE_USER');


/*

INSERT INTO userdetails (id,username,password,active,roles,company,department) VALUES
 	(1,'testuser1', 'pass1', true, 'ROLE_USER','deltacorp','AI'),
	(2,'testuser2', 'pass2', true, 'ROLE_USER','deltacorp','HR'),
	(3,'admin', 'admin', true, 'ROLE_ADMIN','deltacorp','Operations');

	*/

/*
INSERT INTO USER (id,username,password,active,roles,company,department) VALUES
 	(1,'testuser1', 'pass1', true, 'ROLE_USER','deltacorp','AI'),
	(2,'testuser2', 'pass2', true, 'ROLE_USER','deltacorp','HR'),
	(3,'admin', 'admin', true, 'ROLE_ADMIN','deltacorp','Operations');
*/
