USE DoctorWho;

INSERT INTO tblEnemy (EnemyName, Description)
VALUES
('The Master', 'An old friend, and an old foe, The Master has faced the Doctor throughout several lifecycles'),
('The Daleks', 'Daleks are a perennial threat to our dual-hearted hero, and are the only villain so far to have faced every version of the Doctor'),
('The Cybermen', 'First introduced way back in 1966, they were a part of the First Doctor William Hartnell''s final serial'),
('The Weeping Angels', 'These menacing looking statue-like humanoids can kill people with a single touch and can only move when they''re not being looked at, including when people blink'),
('Sontarans', 'Round, brown, and great with butter, the Sontarans aren’t to be messed with');

INSERT INTO tblAuthor (AuthorName)
VALUES
('Ben Aaronovitch'),
('Douglas Adams'),
('David Agnew'),
('Maxine Alderton'),
('Bob Baker');

INSERT INTO tblDoctor (DoctorNumber, DoctorName, BirthDate, FirstEpisodeDate, LastEpisodeDate)
VALUES
(1, 'William Hartnell', '1908-01-08', '1963-11-23', '1966-07-16'),
(2, 'Patrick Troughton', '1920-03-25', '1966-09-10', '1968-06-01'),
(3, 'Jon Pertwee', '1919-07-07', '1968-08-10', '1972-06-24'),
(4, 'Tom Baker', '1934-01-20', '1976-09-04', '1981-03-21'),
(5, 'Peter Davison', '1951-04-15', '1982-01-04', '1984-03-30');

INSERT INTO tblCompanion (CompanionName, WhoPlayed)
VALUES
('Susan Foreman', 'Carole Ann Ford'),
('Barbara Wright', 'Jacqueline Hill'),
('Ian Chesterton', 'William Russell'),
('Vicki', 'Maureen O''Brien'),
('Steven Taylor', 'Peter Purves');
GO


INSERT INTO tblEpisode (SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuhtorId, DoctorId, Notes)
VALUES
(1, 14, 'Musical', 'The Christmas Invasion', '2005-12-25', 3, 5, 'Happy Christmas!'),
(1, 15, 'Historical', 'The Unquiet Dead', '2005-04-09', 2, 1, 'History party'),
(2, 3, 'Adventure', 'New Earth', '2006-04-15', 4, 2, 'Earth looks cool'),
(2, 7, 'Horror', 'Cold Blood', '2005-10-19', 1, 3, 'Scary episode'),
(3, 1, 'Action', 'Time Crash', '2007-11-16', 5, 4, 'Nice CGI');
GO


INSERT INTO tblEpisodeEnemy (EpisodeId, EnemyId)
VALUES
(1, 4),
(2, 3),
(3, 2),
(4, 1),
(5, 5);

INSERT INTO tblEpisodeCompanion(EpisodeId, CompanionId)
VALUES
(1, 4),
(2, 3),
(3, 2),
(4, 1),
(5, 5);
GO
