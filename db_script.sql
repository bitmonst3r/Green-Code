DROP TABLE IF EXISTS User;
DROP TABLE IF EXISTS Code;

CREATE TABLE User(
	userId int AUTO_INCREMENT,
	email varchar(72),

	PRIMARY KEY(userId)
);

CREATE TABLE Code(
	submissionId int AUTO_INCREMENT,
	userId int,
	codeName varchar(32),
	mimetype varchar(32),
	codeString longtext,

	PRIMARY KEY(submissionId),
	FOREIGN KEY(userId) REFERENCES User(userId) ON DELETE CASCADE
);