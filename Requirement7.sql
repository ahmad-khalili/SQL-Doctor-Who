USE DoctorWho;


DROP FUNCTION IF EXISTS dbo.fnEnemies;
GO

CREATE FUNCTION fnEnemies (@EpisodeId int)
RETURNS TABLE AS
RETURN
	SELECT e.EnemyName
	FROM tblEnemy e
	INNER JOIN tblEpisodeEnemy ee ON ee.EnemyId = e.EnemyId
	WHERE ee.EpisodeId = @EpisodeId
GO
