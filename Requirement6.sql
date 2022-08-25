USE DoctorWho;


DROP FUNCTION IF EXISTS dbo.fnCompanions;
GO

CREATE FUNCTION fnCompanions (@EpisodeId int)
RETURNS TABLE AS
RETURN
	SELECT c.CompanionName
	FROM tblCompanion c
	INNER JOIN tblEpisodeCompanion ec ON ec.CompanionId = c.CompanionId
	WHERE ec.EpisodeId = @EpisodeId
GO
