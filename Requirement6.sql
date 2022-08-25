USE DoctorWho;


DROP FUNCTION IF EXISTS dbo.fnCompanions;
GO

CREATE FUNCTION fnCompanions (@EpisodeId int)
RETURNS varchar(MAX) AS
BEGIN
	DECLARE @companions varchar(MAX);
	SELECT @companions = CONCAT(@companions + ', ', c.CompanionName)
	FROM tblCompanion c
	INNER JOIN tblEpisodeCompanion ec ON ec.CompanionId = c.CompanionId
	WHERE ec.EpisodeId = @EpisodeId
	RETURN @companions;
END;
GO
