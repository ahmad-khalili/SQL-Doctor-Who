USE DoctorWho;

UPDATE tblEpisode
SET Title += '_CANCELLED'
WHERE DoctorId IS NULL;
GO