CREATE TABLE [dbo].[Product] (
    [ProductID]       INT             NOT NULL,
    [ProductName]     VARCHAR (250)   NULL,
    [BrandKey]        INT             NOT NULL,
    [CategoryKey]     INT             NOT NULL,
    [UnitBuyKey]      INT             NOT NULL,
    [UnitSaleKey]     INT             NOT NULL,
    [UnitBuyToSale]   INT             NOT NULL,
    [ReOrderUnit]     DECIMAL (18, 2) NOT NULL,
    [SalePrice]       DECIMAL (18, 2) NOT NULL,
    [SizeDescription] VARCHAR (300)   NULL,
    [UserModify]      VARCHAR (10)    NOT NULL,
    [ModifyDate]      DATETIME        NULL,
    [Barcode1]        VARCHAR (15)    NOT NULL,
    [Barcode2]        VARCHAR (15)    NULL,
    [Barcode3]        VARCHAR (15)    NULL,
    [Barcode4]        VARCHAR (15)    NULL,
    [Barcode5]        VARCHAR (15)    NULL, 
    CONSTRAINT [PK_Product] PRIMARY KEY ([ProductID])
);

