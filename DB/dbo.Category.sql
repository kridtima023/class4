CREATE TABLE [dbo].[Category] (
    [CategoryKey]  INT           NOT NULL,
    [CategoryName] VARCHAR (100) NOT NULL,
    [Description]  VARCHAR (250) NULL,
    [UserModify]   VARCHAR (10)  NOT NULL,
    [ModifyDate]   DATETIME      NULL, 
    CONSTRAINT [PK_Category] PRIMARY KEY ([CategoryKey])
);

