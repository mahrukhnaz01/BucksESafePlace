CREATE TABLE [dbo].[Incident]
(
	[IncidentID] INT IDENTITY (1, 1) NOT NULL, 
    [IncidentTitle] NVARCHAR(50) NULL, 
    [IncidentLocation] NVARCHAR(50) NULL, 
    [IncidentDate] DATE NULL, 
    [IncidentDescription] TEXT NULL,
	[CentreID] INT NOT NULL, 
	PRIMARY KEY CLUSTERED ([IncidentID] ASC),
    CONSTRAINT [FK_dbo.Centre_dbo.Centre_CentreID] FOREIGN KEY ([CentreID]) 
        REFERENCES [dbo].[Centre] ([CentreID]) ON DELETE CASCADE
)