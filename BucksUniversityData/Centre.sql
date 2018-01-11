CREATE TABLE [dbo].[Centre] (
    [CentreID]      INT           IDENTITY (1, 1) NOT NULL,
    [ThreeMonthReminder]      bit           DEFAULT 1,
    [Name]       VARCHAR (100) NULL,
    [Address1]      VARCHAR (100) NULL,
    [Address2]      VARCHAR (100) NULL,
    [Postcode]      VARCHAR (8) NULL,
    [TelephoneNumber]      VARCHAR (30) NULL,
    [MobileNumber]      VARCHAR (30) NULL,
    [Email]      VARCHAR (320) NULL,
    [Notes]      VARCHAR (320) NULL,
    PRIMARY KEY CLUSTERED ([CentreID] ASC)
)
