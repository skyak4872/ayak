CREATE TABLE User (
Userid		VARCHAR(16)		PRIMARY KEY NOT NULL,
Userpw		VARCHAR(16)		NOT NULL,
Username	VARCHAR(20)		NOT NULL,
Userssn		VARCHAR(14)		NOT NULL,
Userage		INT				NOT NULL,
Usergender	CHAR(1)			NOT NULL,
Useremail	VARCHAR(30)		NOT NULL,
Userphone	VARCHAR(13)		NOT NULL
)

select * from User;
