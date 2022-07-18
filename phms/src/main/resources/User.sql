DROP TABLE User;

CREATE TABLE User (
	userId			VARCHAR(20)			NOT NULL PRIMARY KEY ,
	userPassWd		VARCHAR(20)			NOT NULL,
	userName		VARCHAR(6)			NOT NULL,
	dateOfBirth		VARCHAR(8)			NOT NULL,
	userGender		CHAR(1)				NOT NULL,
	userEmail		VARCHAR(30)			UNIQUE NOT NULL,
	userphone		VARCHAR(13)			UNIQUE NOT NULL
)

SELECT * FROM User;