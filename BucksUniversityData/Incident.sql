CREATE TABLE [dbo].[Incident] (
    [IncidentID]      INT           IDENTITY (1, 1) NOT NULL,
    [Date/Time]      DATETIME,
    [WhatHapened]       VARCHAR (5000) NULL,
    [WhatWasDone]      VARCHAR (5000) NULL,
	[Emergency]      bit           DEFAULT 0,
    PRIMARY KEY CLUSTERED ([IncidentID] ASC)
)

