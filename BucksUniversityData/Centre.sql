CREATE TABLE [dbo].[Centre]
(
	[CentreID] INT IDENTITY (1, 1) NOT NULL, 
    [ShopName] NVARCHAR(50) NULL, 
    [ShopAddress] TEXT NULL, 
    [Postcode] NVARCHAR(50) NULL, 
    [TelNumber] VARCHAR(50) NULL
	PRIMARY KEY CLUSTERED ([CentreID] ASC)
)