CREATE TABLE [dbo].[Unit] (
    [UnitKey]    INT           NOT NULL,
    [UnitName]   VARCHAR (100) NOT NULL,
    [UnitABBR]   VARCHAR (100) NULL,
    [UserModify] VARCHAR (10)  NOT NULL,
    [ModifyDate] DATETIME      NULL, 
    CONSTRAINT [PK_Unit] PRIMARY KEY ([UnitKey])
);

