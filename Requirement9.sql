USE DoctorWho;

DROP PROCEDURE IF EXISTS dbo.spSummariseEpisodes;
GO

CREATE PROCEDURE spSummariseEpisodes AS
BEGIN
	SELECT TOP 3 c.CompanionName, COUNT(ec.CompanionId) AS TimesAppeared
	FROM tblEpisodeCompanion ec, tblCompanion c
	WHERE c.CompanionId = ec.CompanionId
	GROUP BY c.CompanionName
	ORDER BY TimesAppeared DESC;
END;
BEGIN
	SELECT TOP 3 e.EnemyName, COUNT(ee.EnemyId) AS TimesAppeared
	FROM tblEpisodeEnemy ee, tblEnemy e
	WHERE e.EnemyId = ee.EnemyId
	GROUP BY e.EnemyName
	ORDER BY TimesAppeared DESC
END;
GO
