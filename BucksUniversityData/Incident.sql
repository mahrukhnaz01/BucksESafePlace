CREATE TABLE [dbo].[Incident]
(
	[IncidentID] INT IDENTITY (1, 1) NOT NULL, 
    [IncidentTitle] NVARCHAR(50) NULL, 
    [IncidentLocation] NVARCHAR(50) NULL, 
    [IncidentDate] DATE NULL, 
    [IncidentDescription] TEXT NULL
	PRIMARY KEY CLUSTERED ([IncidentID] ASC)
)