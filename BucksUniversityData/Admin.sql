CREATE TABLE [dbo].[Admin] (
    [AdminID]      INT           IDENTITY (1, 1) NOT NULL,
    [Username]      VARCHAR (320) NULL,
    [Password]       VARCHAR (250) NULL,
    [SuperUser]      VARCHAR (5000) NULL,
    [FirstCreatedAdmin]      DATETIME,
    [LastLogged]      DATETIME,
    PRIMARY KEY CLUSTERED ([AdminID] ASC)
)