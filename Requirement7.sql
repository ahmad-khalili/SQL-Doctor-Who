USE DoctorWho;


DROP FUNCTION IF EXISTS dbo.fnEnemies;
GO

CREATE FUNCTION fnEnemies (@EpisodeId int)
RETURNS varchar(MAX) AS
BEGIN
	DECLARE @enemies varchar(MAX);
	SELECT @enemies = CONCAT(@enemies + ', ', e.EnemyName)
	FROM tblEnemy e
	INNER JOIN tblEpisodeEnemy ee ON ee.EnemyId = e.EnemyId
	WHERE ee.EpisodeId = @EpisodeId
	RETURN @enemies
END;
GO
