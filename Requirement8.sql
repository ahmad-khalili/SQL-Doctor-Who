USE DoctorWho;

DROP VIEW IF EXISTS dbo.viewEpisodes;
GO

CREATE VIEW viewEpisodes AS
	SELECT a.AuthorName, d.DoctorName, dbo.fnCompanions(e.EpisodeId) AS Companions, dbo.fnEnemies(e.EpisodeId) AS Enemies
	FROM tblEpisode e, tblAuthor a, tblDoctor d
	WHERE e.AuhtorId = a.AuthorId AND e.DoctorId = d.DoctorId;
GO