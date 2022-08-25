USE DoctorWho;

CREATE TABLE tblEnemy
(
	EnemyId int IDENTITY(1,1) PRIMARY KEY,
	EnemyName varchar(255) NOT NULL,
	Description varchar(MAX)
);

CREATE TABLE tblAuthor
(
	AuthorId int IDENTITY(1,1) PRIMARY KEY,
	AuthorName varchar(255) NOT NULL
);

CREATE TABLE tblDoctor
(
	DoctorId int IDENTITY(1,1) PRIMARY KEY,
	DoctorNumber int,
	DoctorName varchar(255) NOT NULL,
	BirthDate date,
	FirstEpisodeDate date,
	LastEpisodeDate date
);

CREATE TABLE tblCompanion
(
	CompanionId int IDENTITY(1,1) PRIMARY KEY,
	CompanionName varchar(255) NOT NULL,
	WhoPlayed varchar(255)
);
GO


CREATE TABLE tblEpisode
(
	EpisodeId int IDENTITY(1,1) PRIMARY KEY,
	SeriesNumber smallint NOT NULL UNIQUE,
	EpisodeNumber smallint NOT NULL UNIQUE,
	EpisodeType varchar(256) NOT NULL,
	Title varchar(256),
	EpisodeDate date NOT NULL,
	AuhtorId int NOT NULL FOREIGN KEY REFERENCES tblAuthor(AuthorId),
	DoctorId int FOREIGN KEY REFERENCES tblDoctor(DoctorId),
	Notes varchar(MAX)
);
GO


CREATE TABLE tblEpisodeEnemy
(
	EpisodeEnemyId int IDENTITY(1,1) PRIMARY KEY,
	EpisodeId int NOT NULL FOREIGN KEY REFERENCES tblEpisode(EpisodeId),
	EnemyId int NOT NULL FOREIGN KEY REFERENCES tblEnemy(EnemyId)
);

CREATE TABLE tblEpisodeCompanion
(
	EpisodeCompanionId int IDENTITY(1,1) PRIMARY KEY,
	EpisodeId int NOT NULL FOREIGN KEY REFERENCES tblEpisode(EpisodeId),
	CompanionId int NOT NULL FOREIGN KEY REFERENCES tblCompanion(CompanionId)
);
GO